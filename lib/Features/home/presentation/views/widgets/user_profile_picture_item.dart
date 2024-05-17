import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/Core/shared_prefs/shred_prefs_constants.dart';
import 'package:recepo/Core/utils/assets.dart';

class UserProfilePictureItem extends StatelessWidget {
  const UserProfilePictureItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: /* SharedPrefs.getString(key: kProfilePhotoURL)
                  .isNotEmpty || */
          SharedPrefs.getString(key: kProfilePhotoURL) != null
              ? ClipOval(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: SharedPrefs.getString(key: kProfilePhotoURL)!,
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
    );
  }
}
