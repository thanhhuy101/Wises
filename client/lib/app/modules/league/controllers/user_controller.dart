import 'package:get/get.dart';
import 'package:wises/app/models/user_model.dart';

class UserController extends GetxController {
  var users = <UserModel>[
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'You',
        exp: 150,
        badge: 'assets/images/rank1.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 2',
        exp: 120,
        badge: 'assets/images/rank2.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 3',
        exp: 100,
        badge: 'assets/images/rank3.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 4',
        exp: 90,
        badge: 'assets/images/rank4.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 5',
        exp: 80,
        badge: 'assets/images/rank4.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 6',
        exp: 70,
        badge: 'assets/images/rank4.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 7',
        exp: 60,
        badge: 'assets/images/rank4.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 8',
        exp: 50,
        badge: 'assets/images/rank4.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 9',
        exp: 40,
        badge: 'assets/images/rank4.png'),
    UserModel(
        avatar: 'assets/images/ava.png',
        name: 'User 10',
        exp: 30,
        badge: 'assets/images/rank4.png'),
  ].obs;

  List<UserModel> get topUsers {
    List<UserModel> filteredUsers =
        users.where((user) => user.exp >= 100).toList();
    filteredUsers.sort((a, b) => b.exp.compareTo(a.exp));
    return filteredUsers;
  }

  List<UserModel> get promotionCandidates {
    List<UserModel> filteredUsers =
        users.where((user) => user.exp < 100 && user.exp >= 60).toList();
    filteredUsers.sort((a, b) => b.exp.compareTo(a.exp));
    return filteredUsers;
  }

  List<UserModel> get demotionCandidates {
    List<UserModel> filteredUsers =
        users.where((user) => user.exp < 60).toList();
    filteredUsers.sort((a, b) => b.exp.compareTo(a.exp));
    return filteredUsers;
  }
}
