import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/utils/loaading_animation.dart';
import 'package:recepo/Core/utils/setup_error_state.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/widgets/custom_main_button.dart';
import 'package:recepo/Core/widgets/custom_main_text_form_field.dart';
import 'package:recepo/Features/home/data/models/products_model.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_cubit.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_state.dart';

class EditProductView extends StatefulWidget {
  final Product? product;

  const EditProductView({super.key, this.product});

  @override
  State<EditProductView> createState() => _EditProductViewState();
}

class _EditProductViewState extends State<EditProductView> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;

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
          'Edit Product',
          style: Styles.font32BlueBold.copyWith(
            fontSize: 18.sp,
            color: ColorsManager.subPrimaryColor,
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
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: BlocListener<ProductsCubit, ProductsState>(
            listenWhen: (previous, current) =>
                current is Loading ||
                current is SuccessUpdate ||
                current is Error,
            listener: (context, state) {
              state.whenOrNull(
                loading: () {
                  showDialog(
                    context: context,
                    builder: (context) => const Center(
                      child: LoadingAnimation(),
                    ),
                  );
                },
                successUpdate: (updateProductResponse) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Product updated successfully."),
                      duration: Duration(seconds: 3),
                    ),
                  );
                  if (updateProductResponse.message ==
                      "Product updated successfully.") {
                    Navigator.of(context).pop();
                  }
                },
                error: (error) {
                  setupErrorState(
                    context,
                    "An error occurred while updating the product. $error",
                  );
                },
              );
            },
            child: Form(
              key: context.read<ProductsCubit>().formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: SizedBox(
                                height: 115,
                                width: 115,
                                child: ClipOval(
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: product.thumbnail!,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                            verticalSpace(50),
                            CustomMainTextFormField(
                              labelText: 'Product Name',
                              labelStyle: Styles.enabledTextFieldsLabelText,
                              isObscureText: false,
                              style: Styles.focusedTextFieldsLabelText,
                              controller: context
                                  .read<ProductsCubit>()
                                  .productNameController
                                ..text = product.title ?? '',
                              validator: (value) {},
                              prefixIcon: const Icon(Icons.label_outline),
                            ),
                            verticalSpace(12),
                            CustomMainTextFormField(
                              keyboardType: TextInputType.number,
                              labelText: 'Price',
                              labelStyle: Styles.enabledTextFieldsLabelText,
                              isObscureText: false,
                              style: Styles.focusedTextFieldsLabelText,
                              controller: context
                                  .read<ProductsCubit>()
                                  .productPriceController
                                ..text = product.price.toString(),
                              validator: (value) {},
                              prefixIcon: const Icon(Icons.attach_money),
                            ),
                            verticalSpace(12),
                            CustomMainTextFormField(
                              labelText: 'Description',
                              labelStyle: Styles.enabledTextFieldsLabelText,
                              isObscureText: false,
                              style: Styles.focusedTextFieldsLabelText,
                              controller: context
                                  .read<ProductsCubit>()
                                  .productDescriptionController
                                ..text = product.description ?? '',
                              validator: (value) {},
                              prefixIcon:
                                  const Icon(Icons.description_outlined),
                            ),
                            verticalSpace(50),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Hero(
                                tag: 'product_edit',
                                child: CustomMainButton(
                                  buttonText: "Save Changes",
                                  onPressed: () {
                                    BlocProvider.of<ProductsCubit>(context)
                                        .emitUpdateProductState(product.id!);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
