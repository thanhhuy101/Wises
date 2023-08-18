class Session {
  final String name;
  final List<Lesson> lessons;

  Session(this.name, this.lessons);
}

class Lesson {
  final String name;
  double progress;

  Lesson(this.name, this.progress);
}

List<Session> itemSession = [
  Session('Cơ Bản về Python', [
    Lesson('Giới thiệu về Python', 0.0),
    Lesson('Cài đặt môi trường Python', 0.0),
    Lesson('Cú pháp cơ bản trong Python', 0.0),
  ]),
  Session('Cấu trúc dữ liệu và thuật toán', [
    Lesson('List và Tuple', 0.0),
    Lesson('Dictionary và Set', 0.0),
    Lesson('Vòng lặp và điều kiện', 0.0),
  ]),
  Session('Ứng dụng thực tế với Python', [
    Lesson('Xử lý tệp tin và thư mục', 0.0),
    Lesson('Thư viện requests và web scraping', 0.0),
    Lesson('Xây dựng ứng dụng console đơn giản', 0.0),
  ]),
];
