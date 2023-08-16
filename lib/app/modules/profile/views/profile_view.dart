import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/models/course_model.dart';
import 'package:wises/app/modules/profile/views/components/body.dart';
import 'package:wises/app/modules/profile/views/components/logoutbtn.dart';
import 'package:wises/app/modules/profile/views/components/navbar_profile.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key, required this.itemList}) : super(key: key);
  final List<CourseModel> itemList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavBar(),
          Body(
            itemList: itemList,
          ),
          const SizedBox(
            height: 40,
          ),
          LogoutBtn(),
        ],
      ),
    );
  }
}
