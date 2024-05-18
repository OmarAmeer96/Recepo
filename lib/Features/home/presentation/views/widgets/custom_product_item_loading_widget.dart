import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/utils/spacing.dart';

class ProductItemLoadingWidget extends StatelessWidget {
  const ProductItemLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            width: 160.w,
            height: 100.h,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 16.h,
                  color: Colors.grey[700],
                ),
                verticalSpace(4),
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 13.h,
                      color: Colors.grey[700],
                    ),
                    horizontalSpace(10),
                    Container(
                      width: 18.w,
                      height: 18.h,
                      color: Colors.grey[700],
                    ),
                    horizontalSpace(2),
                    Container(
                      width: 30.w,
                      height: 13.h,
                      color: Colors.grey[700],
                    ),
                  ],
                ),
                verticalSpace(10),
                Container(
                  width: 80.w,
                  height: 12.h,
                  color: Colors.grey[700],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
