import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recepo/Core/routing/routes.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/utils/assets.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:recepo/Features/home/presentation/views/widgets/user_profile_picture_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: RefreshIndicator(
          color: ColorsManager.primaryColor,
          onRefresh: () async {},
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
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
                        child: const Hero(
                          tag: 'profile_picture',
                          child: UserProfilePictureItem(),
                        ),
                      ),
                    ],
                  ),
                ),
                automaticallyImplyLeading: false,
                floating: true,
                // pinned: true,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage(AssetsData.sliverPersistBackgroundImage),
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
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 100.0,
                  child: Center(
                    child: Text(
                      'Sliver To Box Adapter',
                    ),
                  ), // Replace with your widget
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        'Product Item $index',
                      ), // Replace with your product item widget
                    );
                  },
                  childCount: 20, // Replace with your number of product items
                ),
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
