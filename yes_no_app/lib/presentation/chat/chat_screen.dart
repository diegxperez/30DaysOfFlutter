import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage('https://image.pngaaa.com/569/2189569-middle.png'),
          ),
        ),
        title: const Text('Asistente'),
      ),
    );
  }
}
