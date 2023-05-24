import 'package:animations/application/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Animation'),
        centerTitle: true,
      ),
      body: Consumer<ThemeService>(
        builder: (context, themeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                height: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    colors: themeService.isDarkModeOn
                        ? const [
                            Color(0xFF94A9FF),
                            Color(0xFF6B66CC),
                            Color(0xFF200F75),
                          ]
                        : const [
                            Color(0xDDFFFA66),
                            Color(0xDDFFA057),
                            Color(0xDD940B99),
                          ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: themeService.isDarkModeOn
                          ? Colors.black87
                          : Colors.grey,
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 10.0,
                      spreadRadius: 7.0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 225.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: themeService.isDarkModeOn
                              ? Colors.grey[800]
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              themeService.isDarkModeOn
                                  ? 'To dark?'
                                  : 'To bright?',
                              style: const TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              themeService.isDarkModeOn
                                  ? 'Let the sun rise'
                                  : 'Let it be night',
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Switch(
                              value: themeService.isDarkModeOn,
                              onChanged: (_) => themeService.toggleTheme(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
