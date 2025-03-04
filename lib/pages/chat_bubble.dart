import 'package:flutter/material.dart';
import 'package:minimal_chat/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;
  const ChatBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    //light vs dark mode for correct bubble colors

    bool isDarkMode =
        Provider.of<ThemeProvider>(context, listen: false).isDarkMode;
    return Container(
      decoration: BoxDecoration(
          color: isCurrentUser
              ? Colors.green.shade600
              : (isDarkMode ? Colors.grey.shade800 : Colors.grey.shade400),
          borderRadius: BorderRadius.circular(24)),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Text(
        message,
        style: TextStyle(
          color: (isDarkMode ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
