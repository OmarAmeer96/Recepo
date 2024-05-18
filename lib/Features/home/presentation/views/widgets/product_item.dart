import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/utils/assets.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Features/home/data/models/products_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            width: 160.w,
            child: CustomProductImage(
              product: product,
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title!,
                  style: Styles.onboardingTitleFont.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                verticalSpace(4.h),
                ProductPriceAndRatingItem(product: product),
                verticalSpace(10.h),
                Row(
                  children: [
                    ProductBrandaItem(product: product),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductPriceAndRatingItem extends StatelessWidget {
  const ProductPriceAndRatingItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$${product.price?.toStringAsFixed(2)}',
          style: Styles.onboardingContentFont.copyWith(
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
            color: ColorsManager.subPrimaryColor,
          ),
        ),
        horizontalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AssetsData.star,
              width: 18,
            ),
            horizontalSpace(2),
            Text(
              product.rating!.toString(),
              style: Styles.enabledTextFieldsLabelText,
            ),
          ],
        )
      ],
    );
  }
}

class ProductBrandaItem extends StatelessWidget {
  const ProductBrandaItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 4.h,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFe2e2e2),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            product.brand!,
            style: Styles.onboardingTitleFont.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
              color: ColorsManager.subPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: product.thumbnail!,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
