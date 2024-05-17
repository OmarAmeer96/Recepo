import 'package:flutter/material.dart';
import 'package:recepo/Core/utils/spacing.dart';
import 'package:recepo/Core/widgets/custom_main_button.dart';

class UserEditProfileView extends StatelessWidget {
  const UserEditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('User Edit Profile View'),
            verticalSpace(20),
            Hero(
              tag: 'profile_picture',
              child: CustomMainButton(
                buttonText: "Save Changes",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
