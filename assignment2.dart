// 1 - Khai báo lớp Person với các thuộc tính: name(String), age(int), email(String?), các phương thức: showName(), showAge().
// 2 - Khai báo lơp Student kế thừa lớp person, thêm các thuộc tính: grade(int), className(String), mark(int). Phương thức showMarkPoint().
// 3 - Khai báo lớp Teacher kế thừa lớp person, thêm các thuộc tính: department(String), subject(String). Phương thức: teach().
// 4- Tạo constructor cho các lớp ở trên.
// Note: Các phương thức chỉ cần khai báo, k cần viết nội dung thực thi bên trong

//part 1
class Person {
  String? name;
  int? age;
  String? email;

  Person(this.name, this.age, this.email);

  void showName() {
    print("Name is : ${this.name}");
  }

  void showAge() {
    print("Age is : ${this.age}");
  }
}

//source
//https://200lab.io/blog/tu-hoc-ngon-ngu-dart-classes/
//part 2
class Student extends Person {
  int? grade;
  String? className;
  int? mark;

  Student(
      String name, int age, String email, this.grade, this.className, this.mark)
      : super(name, age, email);

  void showMark() {
    print("Mark of ${this.name} is : ${this.age}");
  }
}

//part 3
class Teacher extends Person {
  String? department;
  String? subject;

  Teacher(String name, int age, String email, this.department, this.subject)
      : super(name, age, email);
  void teach() {
    print(
        "Teacher name, ${this.name} is teaching the subject of ${this.subject} in the department of ${this.department}");
  }
}

void main() {
  //part 1
  var person = Person("Viet", 15, "viet.nguyen@viettask.com");
  person.showName();
  person.showAge();

  var student = Student("Viet", 15, "viet.nguyen@viettask.com", 8, "QUT", 9);
  student.showMark();

  var teacher =
      Teacher("Viet", 15, "viet.nguyen@viettask.com", "Engineering", "Flutter");
  teacher.teach();
}
