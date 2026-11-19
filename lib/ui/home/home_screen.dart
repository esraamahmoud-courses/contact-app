import 'package:contact_app/core/theme/app_colors.dart';
import 'package:contact_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/ui/bottom_sheet/bottom_sheet_screen.dart';

import '../../core/content/home_content.dart';
import '../../core/theme/elevated_button.dart';
import '../contact_screen/contact-card.dart';

class HomeScreen extends StatefulWidget {
  final List<Map<String, String>>? contacts;
  final void Function(int index)? onDelete;

  const HomeScreen({super.key, this.contacts, this.onDelete});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> contacts = [];

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newContact = await showModalBottomSheet<Map<String, String>>(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return BottomSheetScreen();
            },
          );
          if (newContact != null) {
            setState(() {
              contacts.add(newContact);
            });
          }
        },
        backgroundColor: AppColors.gold,
        child: Icon(Icons.add, color: AppColors.darkBlue),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: contacts.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/empty_home.png"),
                      Text(
                        HomeContent.emptyContent,
                        style: titleLarge(weight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              : GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: .54,
                  children: List.generate(contacts.length, (index) {
                    return ContactCard(
                      contact: contacts[index],
                      onDelete: () {
                        setState(() {
                          contacts.removeAt(index);
                        });
                      },
                    );
                  }),
                ),
        ),
      ),
    );
  }
}
