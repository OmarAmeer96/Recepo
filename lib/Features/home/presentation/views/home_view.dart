import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/Core/shared_prefs/shred_prefs_constants.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/utils/assets.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Core/widgets/custom_fading_widget.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_cubit.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_state.dart';
import 'package:recepo/Features/home/presentation/views/widgets/custom_product_item_loading_widget.dart';
import 'package:recepo/Features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:recepo/Features/home/presentation/views/widgets/product_item.dart';
import 'package:recepo/Features/login/logic/login_cubit/login_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().emitGetUserProfile();
    _scrollController = ScrollController();
    context.read<ProductsCubit>().getProducts();
  }

  var _scrollController = ScrollController();

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent * 0.7 &&
        !_scrollController.position.outOfRange) {
      context.read<ProductsCubit>().getProducts();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
            context.read<LoginCubit>().emitGetUserProfile();
            if (context.read<ProductsCubit>().state is ProductsFetched &&
                (context.read<ProductsCubit>().state as ProductsFetched)
                    .data
                    .products
                    .isNotEmpty) {
              final query = context.read<ProductsCubit>().currentQuery;
              if (query.isNotEmpty) {
                context.read<ProductsCubit>().searchProducts(query);
              } else {
                context.read<ProductsCubit>().getProducts();
              }
            }
          },
          child: CustomScrollView(
            controller: _scrollController..addListener(_scrollListener),
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
                      child: Hero(
                        tag: "splashView2ToHomeView",
                        child: CustomSearchTextField(
                          onChanged: (query) {
                            context.read<ProductsCubit>().searchProducts(query);
                          },
                          // onClear: () {
                          //   context.read<ProductsCubit>().clearSearch();
                          // },
                        ),
                      ),
                    ),
                  ),
                ),
                pinned: true,
              ),
              BlocBuilder<ProductsCubit, ProductsState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 8.h,
                            ),
                            child: const CustomFadingWidget(
                              child: ProductItemLoadingWidget(),
                            ),
                          );
                        },
                        childCount: 10,
                      ),
                    );
                  } else if (state is Error) {
                    return SliverToBoxAdapter(
                      child: Center(child: Text(state.error)),
                    );
                  } else if (state is ProductsFetched) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final product = state.data.products![index];
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 8.h,
                            ),
                            child: Slidable(
                              key: ValueKey(product.id),
                              startActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                dismissible: DismissiblePane(
                                  onDismissed: () {
                                    context.read<ProductsCubit>().deleteProduct(
                                          product.id!,
                                        );
                                  },
                                ),
                                children: [
                                  SlidableAction(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    onPressed: (BuildContext context) {
                                      context
                                          .read<ProductsCubit>()
                                          .deleteProduct(
                                            product.id!,
                                          );
                                    },
                                    backgroundColor: const Color(0xFFFE4A49),
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                    label: 'Delete',
                                  ),
                                  SlidableAction(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                    ),
                                    onPressed: (BuildContext context) {
                                      context.pushNamed(
                                        Routes.editProductView,
                                        arguments: product,
                                      );
                                    },
                                    backgroundColor: const Color(0xFF21B7CA),
                                    foregroundColor: Colors.white,
                                    icon: Icons.edit,
                                    label: 'Edit',
                                  ),
                                ],
                              ),
                              child: Hero(
                                tag:
                                    "edit_product_view_to_product_item_${product.id}",
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(8),
                                  onTap: () {
                                    context.pushNamed(
                                      Routes.productDetailsView,
                                      arguments: product,
                                    );
                                  },
                                  child: ProductItem(product: product),
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: state.data.products!.length,
                      ),
                    );
                  } else {
                    return const SliverToBoxAdapter(
                      child: Center(child: Text('Unexpected state')),
                    );
                  }
                },
              ),
              SliverToBoxAdapter(
                child: context.read<ProductsCubit>().hasReachedEnd
                    ? const Center(
                        child: Text(
                          'No more products',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : Container(),
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
