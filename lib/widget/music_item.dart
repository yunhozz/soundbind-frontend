import 'package:flutter/material.dart';
import 'package:soundbind_frontend/model/music.dart';

class MusicItem extends StatelessWidget {
  final Music music;

  MusicItem({super.key, required this.music});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListTile(
          leading: Image.network(music.files[0].fileUrl, width: 50, height: 50, fit: BoxFit.cover),
          title: Text(music.title),
          subtitle: Text(music.userNickname),
          onTap: () {
            // TODO: 곡 클릭 시 처리
          },
        ),
      ),
    );
  }
}