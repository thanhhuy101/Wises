import 'dart:convert';
import 'package:get/get.dart';
import 'package:wises/app/models/test_model.dart';
import 'package:http/http.dart' as http;

class LeagueController extends GetxController {
  var test = <Test>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCourses();
  }

  Future<void> fetchCourses() async {
    try {
      final response =
          await http.get(Uri.parse('http://192.168.136.67:8080/courses'));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        test.value = responseData
            .map((data) => Test(
                  image: data['image'],
                  logo: data['logo'],
                  name: data['name'],
                  description: data['description'],
                ))
            .toList();
      } else {
        // Handle error
        print('API error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle error
      print('Error fetching data: $e');
    }
  }
}
