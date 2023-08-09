class CourseModel {
  final String image;
  final String title;
  final String content;
  final String logo;

  CourseModel({
    required this.image,
    required this.title,
    required this.content,
    required this.logo,
  });
}

List<CourseModel> itemList = [
  CourseModel(
    title: "Git/Github",
    image: 'assets/images/git.png',
    content:
        "Khóa học này sẽ hướng dẫn cách sử dụng GIT & GITHUB để lưu trữ file làm việc, dự án phát triển và host website với tên miền tùy chọn và miễn phí, và nó còn là nơi lưu trữ code của chính mình",
    logo: "assets/images/icon_git.png",
  ),
  CourseModel(
    title: "Javascript",
    image: "assets/images/js.png",
    content:
        "Khóa học giúp bạn hiểu rõ tường tận scope, toán tử, hàm, hướng đối tượng trong Javascript. Làm chủ Javascript, ES6",
    logo: "assets/images/icon_js.png",
  ),
  CourseModel(
    title: "HTML/CSS",
    image: "assets/images/html.png",
    content:
        "Khóa học sử dụng các thẻ HTML và CSS để build một giao diện hoàn chỉnh, nắm rõ các phương pháp xây dựng cấu trúc website với HTML5 & CSS3",
    logo: "assets/images/icon_html.png",
  ),
  CourseModel(
    title: "Angular",
    image: "assets/images/angular.png",
    content:
        "Khóa học giúp bạn hiểu rõ tường tận scope, toán tử, hàm, hướng đối tượng trong Javascript. Làm chủ Javascript, ES6",
    logo: "assets/images/icon_angular.png",
  ),
  CourseModel(
    title: "ReactJS",
    image: "assets/images/reactjs.png",
    content:
        "Khóa học giúp bạn quản lý form hiệu quả với React Hook Form, quản lý state với redux toolkit ,hiểu được cách tổ chức files và folders như thế nào",
    logo: "assets/images/icon_reactjs.png",
  ),
];
