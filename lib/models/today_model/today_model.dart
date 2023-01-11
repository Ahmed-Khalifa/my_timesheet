// class TodayModel {
//   List<Today>? today;

//   TodayModel({this.today});

//   TodayModel.fromJson(Map<String, dynamic> json) {
//     if (json['today'] != null) {
//       today = <Today>[];
//       json['today'].forEach((v) {
//         today!.add(Today.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (today != null) {
//       data['today'] = today!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

class TodayModel {
  String? from;
  String? to;
  String? status;

  TodayModel({this.from, this.to, this.status});

  TodayModel.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['from'] = from;
    data['to'] = to;
    data['status'] = status;
    return data;
  }
}
