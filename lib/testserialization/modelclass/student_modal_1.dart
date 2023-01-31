class StudentModal1 {
  List<Data>? data;

  StudentModal1({this.data});

  StudentModal1.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? iId;
  String? name;
  List<Scores>? scores;

  Data({this.iId, this.name, this.scores});

  Data.fromJson(Map<String, dynamic> json) {
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