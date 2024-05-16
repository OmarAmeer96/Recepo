import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/theming/colors_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text('Home'),
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                // color: ColorsManager.primaryColor,
                gradient: LinearGradient(
                  colors: [Colors.red, ColorsManager.primaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ), // Replace with your flexibleSpace widget
            expandedHeight: 100.h,
          ),
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(
              minHeight: 60.0,
              maxHeight: 100.0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list),
                    hintText: 'Search...',
                    border: InputBorder.none,
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
