import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UserWidgetState();
  }
}

class _UserWidgetState extends State<UserWidget> {
  String _name = "Xiaoyan Ge";
  String _notes = 'What a trash';
  String _avatarUrl = 'https://picsum.photos/100';
  Future<void> _changeAvatar() async {
    setState(() {
      _avatarUrl = 'https://picsum.photos/101';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AvatarScreen(onSelected: _changeAvatar)),
          );
        },
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      AvatarScreen(onSelected: _changeAvatar)),
            );
          },
          child: CircleAvatar(
            backgroundImage: NetworkImage(_avatarUrl),
          ),
        ),
        title: Text(_name),
        subtitle: Text(_notes),
      ),
    );
  }
}

class AvatarScreen extends StatelessWidget {
  final void Function() onSelected;

  const AvatarScreen({Key? key, required this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Avatar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tap the avatar to select a new one'),
            SizedBox(height: 20),
            GestureDetector(
              onTap: onSelected,
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;
  return AppBar(
    title: Text(
      "User Screen",
    ),
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(icon),
        onPressed: () {},
      )
    ],
  );
}
