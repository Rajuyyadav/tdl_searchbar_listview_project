//
// class StudentModal2{
//   final List<Userdata> users;
//
//   StudentModal2(this.users);
//
//   factory StudentModal2.fromJson(Map<String,dynamic> json){
//     return StudentModal2((json['data'] as List).map((e) => Userdata.fromJson(e)).toList());}
//
// }
//
//
// class Userdata {
//   final String? name;
//   final int? id;
//   final List<Scores>? scores;
//   Userdata({this.name, this.id, this.scores});
//
//   factory Userdata.fromJson(Map<String, dynamic> json) {
//     return Userdata(
//       id: json['_id'],
//       name: json['name'],
//       scores: (json['scores'] as List)
//           .map((e) => Scores.fromJson(e))
//           .toList(),
//     );
//   }
//   Map<String, dynamic> toJson() {
//     return {
//       "name": name,
//       "_id": id,
//       "scores": scores?.map((e) => e?.toJson()).toList()
//     };
//   }
//
//   @override
//   String toString() {
//     return '$name $id ${scores?[0].score}';
//   }
// }
//
//
// class Scores {
//   final double? score;
//   final String? type;
//   Scores({this.score, this.type});
//   factory Scores.fromJson(Map<String, dynamic> json) {
//     return Scores(score: json['score'], type: json['type']);
//   }
//   Map<String, dynamic> toJson() => {'score': score, 'type': type};
// }
//
//



// class StudentModal2{
//   final List<Userdata> users;
//
//   StudentModal2(this.users);
//
//   factory StudentModal2.fromJson(Map<String,dynamic> json){
//     return StudentModal2((json['data'] as List).map((e) => Userdata.fromJson(e)).toList());}
//
// }


class Userdata {
  int? iId;
  String? name;
  List<Scores>? scores;

  Userdata({this.iId, this.name, this.scores});

  Userdata.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    name = json['name'];
    if (json['scores'] != null) {
      scores = <Scores>[];
      json['scores'].forEach((v) {
        scores!.add(new Scores.fromJson(v));
      });
    }
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.iId;
    data['name'] = this.name;
    if (this.scores != null) {
      data['scores'] = this.scores!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Scores {
  double? score;
  String? type;

  Scores({this.score, this.type});

  Scores.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['score'] = this.score;
    data['type'] = this.type;
    return data;
  }
}