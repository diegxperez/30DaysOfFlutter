import 'package:flutter/material.dart';
import 'package:my_yes_no_app/config/app_theme/theme/app_theme.dart';
import 'package:my_yes_no_app/presentation/screens/widget/her_bubble_message.dart';
import 'package:my_yes_no_app/presentation/screens/widget/my_bubble_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My yes app',
      theme: AppTheme(selectedColor: 0).theme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Asistente 🤖'),
          leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://getillustrations.b-cdn.net//photos/pack/3d-avatar-male_lg.png')),
        ),
        body: _ChatView(),
      ),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return (index % 2 == 0) ? HerBubbleMessage() : MyBubbleMessage();
            },
          )),
          const Text('Hi World')
        ]),
      ),
    );
  }
}
