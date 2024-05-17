import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/Core/shared_prefs/shred_prefs_constants.dart';
import 'package:recepo/Core/utils/assets.dart';
import 'package:recepo/Features/home/presentation/views/widgets/custom_search_text_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    SvgPicture.asset(AssetsData.appLogo1Svg),
                    const Spacer(),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: /* SharedPrefs.getString(key: kProfilePhotoURL)
                                  .isNotEmpty || */
                          SharedPrefs.getString(key: kProfilePhotoURL) != null
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
                  ],
                ),
              ),
              automaticallyImplyLeading: false,
              floating: true,
              // pinned: true,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetsData.sliverPersistBackgroundImage),
                    fit: BoxFit.cover,
                  ),
                  // color: ColorsManager.mainGrey,
                  // gradient: LinearGradient(
                  //   colors: [Colors.red, ColorsManager.primaryColor],
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  // ),
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
