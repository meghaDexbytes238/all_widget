// class Album {
//   final int id;
//   final String title;
//
//   const Album({required this.id, required this.title});
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return switch (json) {
//       {
//       'id': int id,
//       'title': String title,
//       } =>
//           Album(
//             id: id,
//             title: title,
//           ),
//       _ => throw const FormatException('Failed to load album.'),
//     };
//   }
// }

// class Album {
//   final int id;
//   final String title;
//
//   Album({required this.id, required this.title});
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }
class
UserDaata {
  String? name;
  String? job;
  int? id;

  UserDaata({this.name, this.job, this.id});

  UserDaata.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    job = json['job'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['job'] = this.job;
    data['id'] = this.id;
    return data;
  }
}