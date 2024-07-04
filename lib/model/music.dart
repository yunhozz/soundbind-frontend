class Music {
  final int id;
  final int userId;
  final String userNickname;
  final String title;
  List<MusicFile> files;

  Music({
    required this.id,
    required this.userId,
    required this.userNickname,
    required this.title,
    required this.files,
  });

  factory Music.fromJson(Map<String, dynamic> json) {
    var list = json['files'] as List;
    List<MusicFile> filesList = list.map((i) => MusicFile.fromJson(i)).toList();

    return Music(
      id: json['id'],
      userId: json['userId'],
      userNickname: json['userNickname'],
      title: json['title'],
      files: filesList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'userNickname': userNickname,
      'title': title,
      'files': files.map((file) => file.toJson()).toList(),
    };
  }
}

class MusicFile {
  final int id;
  final String originalFileName;
  final String savedName;
  final String fileUrl;

  MusicFile({
    required this.id,
    required this.originalFileName,
    required this.savedName,
    required this.fileUrl,
  });

  factory MusicFile.fromJson(Map<String, dynamic> json) {
    return MusicFile(
      id: json['id'],
      originalFileName: json['originalFileName'],
      savedName: json['savedName'],
      fileUrl: json['fileUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'originalFileName': originalFileName,
      'savedName': savedName,
      'fileUrl': fileUrl,
    };
  }
}