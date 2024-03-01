import 'package:flutter/material.dart';

class HerBubbleMessage extends StatelessWidget {
  const HerBubbleMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: colors.secondary),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Mollit culpa nostrud consequat',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      _ImageBubble(),
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/21-05540164de4e3229609f106e468fa8e7.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Enviando mensaje'),
          );
        },
      ),
    );
  }
}
