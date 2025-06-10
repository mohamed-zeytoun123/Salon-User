import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TranslationsTese extends StatelessWidget {
  const TranslationsTese({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Name'.tr()),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
             if (context.locale.languageCode == 'en') {
                context.setLocale(Locale('ar'));
              } else {
                context.setLocale(Locale('en'));
              } 
            },
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.face, size: 80, color: Colors.blue),
                SizedBox(height: 20),
                Text(
                  'Welcome Back to'.tr(),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Project Name'.tr(),
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 30),
                Text('Let us add a magical touch to'.tr()),
                Text(
                  'your beauty'.tr(),
                  style: TextStyle(fontSize: 20, color: Colors.pink),
                ),
                SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.location_on),
                  label: Text('Select Location'.tr()),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Confirm Location'.tr()),
                ),
                Spacer(),
                Text('Swipe to Continue'.tr(), style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
