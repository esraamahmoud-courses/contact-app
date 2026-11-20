import 'package:contact_app/core/theme/app_colors.dart';
import 'package:contact_app/core/theme/app_fonts.dart';
import 'package:contact_app/core/theme/elevated_button.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final Map<String, String>? contact;
  final VoidCallback? onDelete;

  const ContactCard({super.key, this.contact, this.onDelete});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        color: AppColors.gold,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 17,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height * .2,
                  child: Image.asset(
                    "assets/images/card_image_messi.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 7,
                  child: elevatedButton(
                    data: contact?['name'] ?? '',
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
                      Expanded(
                        child: Text(
                          contact?['email'] ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: bodySmall(color: AppColors.darkBlue),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Icon(Icons.phone_in_talk, color: AppColors.darkBlue),
                      Expanded(
                        child: Text(
                          contact?['phone'] ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: bodySmall(color: AppColors.darkBlue),
                        ),
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
                  onTap: onDelete,
                  color: AppColors.orange,
                  icon: Icon(Icons.delete, color: AppColors.white),
                  fontColor: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
