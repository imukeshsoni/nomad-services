import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nomad_services/utils/colors.dart';
import 'package:nomad_services/utils/dimensions.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('height ${Get.height}');

    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.arrow_back_ios, color: AppColors.textColor),
            Text(
              'My Profile',
              style: TextStyle(
                  fontSize: Dimensions.font20,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w600),
            ),
            const Icon(Icons.more_horiz, color: AppColors.textColor)
          ],
        ),
      ),
    ));
  }
}
