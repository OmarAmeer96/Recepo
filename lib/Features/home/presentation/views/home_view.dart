import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/Core/shared_prefs/shred_prefs_constants.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/utils/assets.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_cubit.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_state.dart';
import 'package:recepo/Features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();
  int _offset = 0;
  final int _limit = 10;

  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().emitGetUserProfile();
    context
        .read<ProductsCubit>()
        .getProducts(_limit, _offset); // Fetch initial products

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      // Fetch the next set of products when scrolled 80% of the list
      setState(() {
        if (_limit != 100) {
          _offset += _limit;
        }
      });
      context.read<ProductsCubit>().getProducts(_limit, _offset);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: RefreshIndicator(
          color: ColorsManager.primaryColor,
          displacement: 10,
          onRefresh: () async {
            setState(() {
              _offset = 0;
            });
            context.read<LoginCubit>().emitGetUserProfile();
            context.read<ProductsCubit>().getProducts(_limit, _offset);
          },
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                clipBehavior: Clip.none,
                title: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: SvgPicture.asset(AssetsData.threeDashSvg),
                        onTap: () {},
                      ),
                      SvgPicture.asset(AssetsData.appLogo1Svg),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.userEditProfileView);
                        },
                        child: Hero(
                          tag: 'profile_picture',
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child:
                                SharedPrefs.getString(key: kProfilePhotoURL) !=
                                        null
                                    ? ClipOval(
                                        child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl: SharedPrefs.getString(
                                              key: kProfilePhotoURL)!,
                                          placeholder: (context, url) =>
                                              const CircularProgressIndicator(),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      )
                                    : const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                          AssetsData.profileImage,
                                        ),
                                      ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                automaticallyImplyLeading: false,
                floating: true,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AssetsData.sliverPersistBackgroundImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                expandedHeight: 100.h,
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  minHeight: 100.0,
                  maxHeight: 100.0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 26.h,
                        left: 12.w,
                        right: 12.w,
                        bottom: 12.h,
                      ),
                      child: const Hero(
                        tag: "splashView2ToHomeView",
                        child: CustomSearchTextField(),
                      ),
                    ),
                  ),
                ),
                pinned: true,
              ),
              BlocBuilder<ProductsCubit, ProductsState>(
                builder: (context, state) {
                  log('Product: $state');
                  if (state is Loading) {
                    return const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  } else if (state is Error) {
                    return SliverToBoxAdapter(
                      child: Center(child: Text(state.error)),
                    );
                  } else if (state is ProductsFetched) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          log('Product: ${state.data.products[index].title}');
                          final product = state.data.products[index];
                          return ListTile(
                            leading: CachedNetworkImage(
                              imageUrl: product.thumbnail,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                            title: Text(product.title),
                            subtitle:
                                Text('\$${product.price.toStringAsFixed(2)}'),
                          );
                        },
                        childCount: state.data.products.length,
                      ),
                    );
                  } else {
                    return const SliverToBoxAdapter(
                      child: Center(child: Text('No products available')),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
