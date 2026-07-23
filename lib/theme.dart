import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saud_frontend/provider/theme_providerr.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Icon(Icons.person, size: 80,),
            Switch(
                value: themeProvider.isDark,
                onChanged: (val){
                  themeProvider.setTheme(val);
                }),
          ],
        ),
      ),
    );
  }
}
