import 'package:contact_app/core/routes/app_routes.dart';
import 'package:contact_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../core/theme/elevated_button.dart';
import '../../core/theme/text_form_field.dart';
import '../../core/theme/user_info_example.dart';

class BottomSheetScreen extends StatefulWidget {
  final dynamic contact;

  const BottomSheetScreen({super.key, this.contact});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  late GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController nameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.contact?['name'] ?? '');
    emailController = TextEditingController(
      text: widget.contact?['email'] ?? '',
    );
    phoneController = TextEditingController(
      text: widget.contact?['phone'] ?? '',
    );

    nameController.addListener(() => setState(() {}));
    emailController.addListener(() => setState(() {}));
    phoneController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Navigator.pop(context, {
        'name': nameController.text.trim(),
        'email': emailController.text.trim(),
        'phone': phoneController.text.trim(),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          padding: EdgeInsets.all(size.height * .02),
          decoration: BoxDecoration(
            color: AppColors.darkBlue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: size.height * .02,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 16,
                    children: [
                      Expanded(
                        flex: 3,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: AppColors.gold),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          onPressed: () {},
                          child: SizedBox(
                            height: size.height * .170,
                            child: Image.asset(
                              "assets/images/image_not_preview.png",

                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            userInfoExample(
                              data: nameController.text.isEmpty
                                  ? "User Name"
                                  : nameController.text,
                            ),
                            userInfoExample(
                              data: emailController.text.isEmpty
                                  ? "example@email.com"
                                  : emailController.text,
                            ),
                            userInfoExample(
                              data: phoneController.text.isEmpty
                                  ? "+200000000000"
                                  : phoneController.text,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: size.height * .01,
                    children: [
                      ContactTextForm(
                        data: "Enter User Name ",
                        controller: nameController,
                        keyboardType: TextInputType.name,
                      ),

                      ContactTextForm(
                        data: "Enter User Email ",
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      ContactTextForm(
                        data: "Enter User Phone",
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: elevatedButton(
                      data: "Enter user",
                      onTap: () {
                        submitForm();
                      },
                      fontColor: AppColors.darkBlue,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
