import 'package:contact_app/core/theme/app_colors.dart';
import 'package:contact_app/core/theme/app_fonts.dart';
import 'package:contact_app/core/theme/elevated_button.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkBlue,

      appBar: AppBar(
        title: Image.asset(
          "assets/images/app_logo.png",
          width: size.width * .3,
        ),
        backgroundColor: AppColors.darkBlue,
        automaticallyImplyLeading: false,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: .54,
        children: List.generate(3, (index) {
          return ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
            child: Container(
              color: AppColors.gold,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 17,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/card_image_messi.png",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 8,
                        left: 7,
                        child: elevatedButton(
                          data: "Leo Messi",
                          onTap: () {},
                          size: 14,
                          fontColor: AppColors.darkBlue,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      spacing: 10,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Icon(Icons.email, color: AppColors.darkBlue),
                            Text(
                              "leomessi.route@gmail.com",
                              style: bodySmall(color: AppColors.darkBlue),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Icon(
                              Icons.phone_in_talk,
                              color: AppColors.darkBlue,
                            ),
                            Text(
                              "+200000000000",
                              style: bodySmall(color: AppColors.darkBlue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: elevatedButton(
                        data: "Delete",
                        onTap: () {},
                        color: AppColors.orange,
                        icon: Icon(Icons.delete, color: AppColors.white),
                        fontColor: AppColors.white,
                        fontWeight: .w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
