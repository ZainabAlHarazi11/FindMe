import 'package:findme/utils/utils.dart';

class User {
  int id;
  String name;
  String photo;
  String location = '';
  String gender;
  int age;
  String uid;


  User(this.id, this.name, this.photo, this.gender, this.age);
 // User({ this.uid });
}

// Names generated at http://random-name-generator.info/
final List<User> users = [
  User(1, '', AvailableImages.man1['assetPath'], 'M', 27),
  User(2, '', AvailableImages.woman1['assetPath'], 'F', 24),
  User(3, '', AvailableImages.man2['assetPath'], 'M', 28),
  User(4, '', AvailableImages.woman2['assetPath'], 'F', 23),
  User(5, '', AvailableImages.woman3['assetPath'], 'F', 25),
  User(6, '', AvailableImages.man3['assetPath'], 'M', 29),
  User(7, '', AvailableImages.woman4['assetPath'], 'F', 22),
  User(8, '', AvailableImages.man4['assetPath'], 'M', 23),
  User(9, '', AvailableImages.man5['assetPath'], 'M', 25),
  User(10,'', AvailableImages.woman5['assetPath'], 'F', 26),
];


final List<String> userHobbies = [
  "Dancing", "Hiking", "Singing", "Reading", "Fishing"
]; 
