import 'package:flutter/material.dart';
import 'package:soundbind_frontend/model/music.dart';
import 'package:soundbind_frontend/widget/music_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sound Bind Music Streaming"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search songs, artists...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: musics.length,
          itemBuilder: (context, index) {
            return Container(
              constraints: BoxConstraints(
                maxHeight: 100,
              ),
              child: MusicItem(music: musics[index]),
            );
          },
        ),
      ),
    );
  }

  final List<Music> musics = [
    Music(
      id: 1,
      userId: 101,
      userNickname: 'User1',
      title: 'Song 1',
      files: [
        MusicFile(
          id: 1001,
          originalFileName: 'song1.mp3',
          savedName: 'song1_101.mp3',
          fileUrl: 'https://example.com/song1.mp3',
        ),
        MusicFile(
          id: 1002,
          originalFileName: 'image1.jpg',
          savedName: 'test_image_1.jpg',
          fileUrl: 'https://example.com/test_image_1.jpg',
        ),
      ],
    ),
    Music(
      id: 2,
      userId: 102,
      userNickname: 'User2',
      title: 'Song 2',
      files: [
        MusicFile(
          id: 2001,
          originalFileName: 'song2.mp3',
          savedName: 'song2_102.mp3',
          fileUrl: 'https://example.com/song2.mp3',
        ),
        MusicFile(
          id: 2002,
          originalFileName: 'image2.jpg',
          savedName: 'test_image_2.jpg',
          fileUrl: 'https://example.com/test_image_2.jpg',
        ),
      ],
    ),
  ];
}