import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/account_widget.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions.init(context); // Đừng quên khởi tạo Dimensions

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            // Avatar icon
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconSize: Dimensions.height45 + Dimensions.height30,
              size: Dimensions.height15 * 10,
            ),
            SizedBox(height: Dimensions.height20),

            // Full name
            AccountWidget(
              appIcon: AppIcon(
                icon: Icons.person,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
                iconSize: Dimensions.height10 * 2.5,
                size: Dimensions.height10 * 5,
              ),
              bigText: BigText(
                color: Colors.black,
                text: "Nguyễn Phạm Thành Nhân",
              ),
            ),

            // Phone
            AccountWidget(
              appIcon: AppIcon(
                icon: Icons.phone,
                backgroundColor: Colors.yellow.shade500,
                iconColor: Colors.white,
                iconSize: Dimensions.height10 * 2.5,
                size: Dimensions.height10 * 5,
              ),
              bigText: BigText(
                color: Colors.black,
                text: "13761849016",
              ),
            ),

            // Email
            AccountWidget(
              appIcon: AppIcon(
                icon: Icons.email,
                backgroundColor: Colors.yellow.shade500,
                iconColor: Colors.white,
                iconSize: Dimensions.height10 * 2.5,
                size: Dimensions.height10 * 5,
              ),
              bigText: BigText(
                color: Colors.black,
                text: "mjdazaa87@yahoo.com",
              ),
            ),

            // Address
            AccountWidget(
              appIcon: AppIcon(
                icon: Icons.location_on,
                backgroundColor: Colors.yellow.shade500,
                iconColor: Colors.white,
                iconSize: Dimensions.height10 * 2.5,
                size: Dimensions.height10 * 5,
              ),
              bigText: BigText(
                color: Colors.black,
                text: "Fill in your address",
              ),
            ),

            // Message or Note
            AccountWidget(
              appIcon: AppIcon(
                icon: Icons.message_outlined,
                backgroundColor: Colors.redAccent,
                iconColor: Colors.white,
                iconSize: Dimensions.height10 * 2.5,
                size: Dimensions.height10 * 5,
              ),
              bigText: BigText(
                color: Colors.black,
                text: "none",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
