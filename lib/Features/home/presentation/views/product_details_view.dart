import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/font_family_helper.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/utils/extensions.dart';
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
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text('Product ID: ${product!.id ?? ''}'),
              const SizedBox(height: 8),
              Text('Product Price: ${product!.price ?? ''}'),
              const SizedBox(height: 8),
              Text('Product Description: ${product!.description ?? ''}'),
              const SizedBox(height: 8),
              Text('Brand: ${product!.brand ?? ''}'),
              const SizedBox(height: 8),
              Text('Category: ${product!.category ?? ''}'),
              const SizedBox(height: 8),
              Text('Rating: ${product!.rating ?? ''}'),
              const SizedBox(height: 8),
              Text('Stock: ${product!.stock ?? ''}'),
            ],
          ),
        ),
      ),
    );
  }
}
