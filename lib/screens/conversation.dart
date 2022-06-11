import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hello/models/user.dart';

class Conversation extends StatelessWidget {
  const Conversation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as User;
    print(args.imageUrl);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(args.imageUrl),
            ),
            Text(args.username),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
