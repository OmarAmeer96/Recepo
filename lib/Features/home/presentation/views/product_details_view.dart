import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/font_family_helper.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/utils/assets.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/widgets/custom_fading_widget.dart';
import 'package:recepo/Features/home/data/models/products_model.dart';

class ProductDetailsView extends StatelessWidget {
  final Product? product;
  const ProductDetailsView({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    if (product == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Product'),
        ),
        body: const Center(
          child: Text('No product found'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
          style: Styles.font32BlueBold.copyWith(
            fontSize: 18.sp,
            color: ColorsManager.subPrimaryColor,
            fontFamily: FontFamilyHelper.regular,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: product!.thumbnail!,
                  placeholder: (context, url) {
                    return CustomFadingWidget(
                      child: SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    );
                  },
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                product!.title ?? '',
                style: Styles.font32BlueBold.copyWith(
                  fontSize: 24.sp,
                  color: ColorsManager.subPrimaryColor,
                  fontFamily: FontFamilyHelper.bold,
                ),
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '\$${product!.price?.toStringAsFixed(2)}',
                        style: Styles.onboardingContentFont.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorsManager.subPrimaryColor,
                        ),
                      ),
                      horizontalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            AssetsData.star,
                            width: 22.w,
                          ),
                          horizontalSpace(2),
                          Text(
                            product!.rating!.toString(),
                            style: Styles.enabledTextFieldsLabelText.copyWith(
                              fontSize: 18.sp,
                            ),
                          ),
                          horizontalSpace(20),
                          Text(
                            'Stock: ${product!.stock ?? ''}',
                            style: Styles.enabledTextFieldsLabelText.copyWith(
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  verticalSpace(16),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFe2e2e2),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            product!.brand!,
                            style: Styles.onboardingTitleFont.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                              color: ColorsManager.subPrimaryColor,
                            ),
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          ),
                        ),
                      ),
                      horizontalSpace(16),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFe2e2e2),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            product!.category!,
                            style: Styles.onboardingTitleFont.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                              color: ColorsManager.subPrimaryColor,
                            ),
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description:',
                        style: Styles.enabledTextFieldsLabelText.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorsManager.subPrimaryColor,
                        ),
                      ),
                      verticalSpace(4),
                      Text(
                        product!.description ?? '',
                        style: Styles.enabledTextFieldsLabelText.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
