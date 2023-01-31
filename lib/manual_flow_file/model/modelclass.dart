//
// import 'dart:convert';
//
// ModelClassForCities welcomeFromJson(String str) => ModelClassForCities.fromJson(json.decode(str));
//
// String welcomeToJson(ModelClassForCities data) => json.encode(data.toJson());
//
// class ModelClassForCities {
//
//
//   final List<City> cities;
//   ModelClassForCities({
//     required this.cities,
//   });
//   factory ModelClassForCities.fromJson(Map<String, dynamic> json) => ModelClassForCities(
//     cities: List<City>.from(json["cities"].map((x) => City.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "cities": List<dynamic>.from(cities.map((x) => x.toJson())),
//   };
// }
//
// class City {
//
//
//   final List<String> delhi;
//   final List<String> mumbai;
//   final List<String> bangalore;
//   final List<String> jaipur;
//   final List<String> nagpur;
//   final List<String> ahemdabad;
//   final List<String> pune;
//   final List<String> nashik;
//   City({
//     required this.delhi,
//     required this.mumbai,
//     required this.bangalore,
//     required this.jaipur,
//     required this.nagpur,
//     required this.ahemdabad,
//     required this.pune,
//     required this.nashik,
//   });
//   factory City.fromJson(Map<String, dynamic> json) => City(
//     delhi: json["Delhi"] == null ? null : List<String>.from(json["Delhi"].map((x) => x)),
//     mumbai: json["Mumbai"] == null ? null : List<String>.from(json["Mumbai"].map((x) => x)),
//     bangalore: json["Bangalore"] == null ? null : List<String>.from(json["Bangalore"].map((x) => x)),
//     jaipur: json["Jaipur"] == null ? null : List<String>.from(json["Jaipur"].map((x) => x)),
//     nagpur: json["Nagpur"] == null ? null : List<String>.from(json["Nagpur"].map((x) => x)),
//     ahemdabad: json["Ahemdabad"] == null ? null : List<String>.from(json["Ahemdabad"].map((x) => x)),
//     pune: json["Pune"] == null ? null : List<String>.from(json["Pune"].map((x) => x)),
//     nashik: json["Nashik"] == null ? null : List<String>.from(json["Nashik"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "Delhi": delhi == null ? null : List<dynamic>.from(delhi.map((x) => x)),
//     "Mumbai": mumbai == null ? null : List<dynamic>.from(mumbai.map((x) => x)),
//     "Bangalore": bangalore == null ? null : List<dynamic>.from(bangalore.map((x) => x)),
//     "Jaipur": jaipur == null ? null : List<dynamic>.from(jaipur.map((x) => x)),
//     "Nagpur": nagpur == null ? null : List<dynamic>.from(nagpur.map((x) => x)),
//     "Ahemdabad": ahemdabad == null ? null : List<dynamic>.from(ahemdabad.map((x) => x)),
//     "Pune": pune == null ? null : List<dynamic>.from(pune.map((x) => x)),
//     "Nashik": nashik == null ? null : List<dynamic>.from(nashik.map((x) => x)),
//   };
// }
