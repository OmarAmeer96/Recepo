import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/Core/shared_prefs/shred_prefs_constants.dart';
import 'package:recepo/Core/theming/colors_manager.dart';
import 'package:recepo/Core/theming/font_family_helper.dart';
import 'package:recepo/Core/theming/styles.dart';
import 'package:recepo/Core/utils/assets.dart';
import 'package:recepo/Core/utils/extensions.dart';
import 'package:recepo/Core/utils/loaading_animation.dart';
import 'package:recepo/Core/utils/setup_error_state.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/widgets/custom_main_button.dart';
import 'package:recepo/Core/widgets/custom_main_text_form_field.dart';
import 'package:recepo/Core/widgets/image_picker_bottom_sheet.dart';
import 'package:recepo/Features/profile/logic/update_user_profile_cubit/update_user_profile_cubit.dart';
import 'package:recepo/Features/profile/logic/update_user_profile_cubit/update_user_profile_state.dart';

class UserEditProfileView extends StatefulWidget {
  const UserEditProfileView({super.key});

  @override
  State<UserEditProfileView> createState() => _UserEditProfileViewState();
}

class _UserEditProfileViewState extends State<UserEditProfileView> {
  String? fullName;
  String? phoneNumber;
  String? gender;
  String? city;
  String? nationalId;

  String selectedGender = SharedPrefs.getString(key: kGender) ?? "MALE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: BlocListener<UpdateUserProfileCubit, UpdateUserProfileState>(
            listenWhen: (previous, current) =>
                current is Loading || current is Success || current is Error,
            listener: (context, state) {
              state.whenOrNull(
                loading: () {
                  showDialog(
                    context: context,
                    builder: (context) => const Center(
                      child: LoadingAnimation(),
                      // CircularProgressIndicator(
                      //   color: ColorsManager.primaryColor,
                      // ),
                    ),
                  );
                },
                success: (updateUserProfileResponse) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(updateUserProfileResponse.message),
                      duration: const Duration(seconds: 3),
                    ),
                  );
                  if (updateUserProfileResponse.message ==
                      "Profile updated successfully.") {
                    context.pop();
                    context.pop();
                  }
                },
                error: (error) {
                  setupErrorState(
                    context,
                    "An error occurred while updating the profile. $error",
                  );
                },
              );
            },
            child: Form(
              key: context.read<UpdateUserProfileCubit>().formKey,
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
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  fit: StackFit.expand,
                                  children: [
                                    Positioned(
                                      child: context
                                                  .read<
                                                      UpdateUserProfileCubit>()
                                                  .selectedImage !=
                                              null
                                          ? ClipOval(
                                              child: Image.file(
                                                context
                                                    .read<
                                                        UpdateUserProfileCubit>()
                                                    .selectedImage!,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                          :
                                          // SharedPrefs.getString(
                                          //             key: kProfilePhotoURL)!
                                          //         .isNotEmpty
                                          SharedPrefs.getString(
                                                      key: kProfilePhotoURL) !=
                                                  null
                                              ? ClipOval(
                                                  child: CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    imageUrl:
                                                        SharedPrefs.getString(
                                                            key:
                                                                kProfilePhotoURL)!,
                                                    placeholder: (context,
                                                            url) =>
                                                        const CircularProgressIndicator(),
                                                    errorWidget: (context, url,
                                                            error) =>
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
                                    Positioned(
                                      bottom: 0,
                                      right: -25,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0x59FF981A),
                                              blurRadius: 8,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: CircleAvatar(
                                          radius: 27,
                                          backgroundColor: Colors.white,
                                          child: RawMaterialButton(
                                            onPressed: () async {
                                              requestPermission();
                                              imagePickerBottomSheet(
                                                context,
                                                onTap1: () {
                                                  _pickImageFromCamera();
                                                },
                                                onTap2: () {
                                                  _pickImageFromGallery();
                                                },
                                              );
                                            },
                                            elevation: 2.0,
                                            fillColor: const Color(0xFF191D31),
                                            padding: const EdgeInsets.all(15.0),
                                            shape: const CircleBorder(),
                                            child: SvgPicture.asset(
                                              AssetsData.cameraIcon,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            verticalSpace(50),
                            CustomMainTextFormField(
                              labelText: 'Full Name',
                              labelStyle: Styles.enabledTextFieldsLabelText,
                              isObscureText: false,
                              style: Styles.focusedTextFieldsLabelText,
                              controller: context
                                  .read<UpdateUserProfileCubit>()
                                  .fullNameController,
                              validator: (value) {},
                              prefixIcon: const Icon(Icons.person_outline),
                            ),
                            verticalSpace(12),
                            CustomMainTextFormField(
                              keyboardType: TextInputType.number,
                              labelText: 'Phone Number',
                              labelStyle: Styles.enabledTextFieldsLabelText,
                              isObscureText: false,
                              style: Styles.focusedTextFieldsLabelText,
                              controller: context
                                  .read<UpdateUserProfileCubit>()
                                  .phoneNumberController,
                              validator: (value) {},
                              prefixIcon: const Icon(Icons.phone),
                            ),
                            verticalSpace(12),
                            CustomMainTextFormField(
                              labelText: 'City',
                              labelStyle: Styles.enabledTextFieldsLabelText,
                              isObscureText: false,
                              style: Styles.focusedTextFieldsLabelText,
                              controller: context
                                  .read<UpdateUserProfileCubit>()
                                  .cityController,
                              validator: (value) {},
                              prefixIcon:
                                  const Icon(Icons.location_city_outlined),
                            ),
                            verticalSpace(12),
                            CustomMainTextFormField(
                              keyboardType: TextInputType.number,
                              labelText: 'National ID',
                              labelStyle: Styles.enabledTextFieldsLabelText,
                              isObscureText: false,
                              style: Styles.focusedTextFieldsLabelText,
                              controller: context
                                  .read<UpdateUserProfileCubit>()
                                  .nationalIdController,
                              validator: (value) {},
                              prefixIcon:
                                  const Icon(Icons.credit_card_outlined),
                            ),
                            verticalSpace(50),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Hero(
                                tag: 'profile_picture',
                                child: CustomMainButton(
                                  buttonText: "Save Changes",
                                  onPressed: () {
                                    BlocProvider.of<UpdateUserProfileCubit>(
                                            context)
                                        .emitUpdateProfileState();
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

  Future<void> requestPermission() async {
    var status = await Permission.manageExternalStorage.status;
    if (!status.isGranted) {
      await Permission.manageExternalStorage.request();
    }
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) {
      return;
    }
    setState(() {
      context.read<UpdateUserProfileCubit>().selectedImage =
          File(returnedImage.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) {
      return;
    }
    setState(() {
      context.read<UpdateUserProfileCubit>().selectedImage =
          File(returnedImage.path);
    });
  }
}
