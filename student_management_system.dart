// A
abstract class Role {
  void displayRole();
}

// B
class Person implements Role {
  String _name, _address;
  int _age;

  Person(this._name, this._age, this._address);

  String get getName => _name;

  int get getAge => _age;

  String get getAddress => _address;

  @override
  void displayRole() {}
}

// C
class Student extends Person {
  int _studentId;
  double _grade = 0.0;
  List<double> _courseScores;

  String _stuName, _stuAddress;
  int _stuAge;

  Student(this._studentId, this._stuName, this._stuAge, this._stuAddress,
      this._courseScores)
      : super(_stuName, _stuAge, _stuAddress);

  double get getGrade => _grade;

  @override
  void displayRole() {
    print("Role:Student\n");
  }

  void calculateAverage() {
    _courseScores.forEach((score) {
      _grade += score;
    });
    _grade = (_grade / (_courseScores.length * 1.0));
  }
}

// D
class Teacher extends Person {
  int _teacherId;
  List<String> _coursesTaught;

  String _teacherName, _teacherAddress;
  int _teacherAge;

  Teacher(this._teacherId, this._teacherName, this._teacherAge,
      this._teacherAddress, this._coursesTaught)
      : super(_teacherName, _teacherAge, _teacherAddress);

  @override
  void displayRole() {
    print("Role:Teacher\n");
  }

  void displayCoursesTaught() {
    print("Courses Taught:\n");
    _coursesTaught.forEach((courseName) {
      print("-${courseName}\n");
    });
  }
}

// E
void main() {
  // Student Example
  Student stu = Student(1, "John Doe", 20, "123 Main Street", [90, 85, 82]);
  print("Student Information:\n");
  stu.displayRole();
  stu.calculateAverage();
  print("Name:${stu.getName}\n");
  print("Age:${stu.getAge}\n");
  print("Address:${stu.getAddress}\n");
  print("Average Score:${stu.getGrade.toStringAsFixed(1)}\n");

  // Teacher Example
  Teacher teacher = Teacher(
      11, "Mrs. Smith", 35, "456 Oak St", ["Math", "English", "Bangla"]);
  print("Teacher Information:\n");
  teacher.displayRole();
  print("Name:${teacher.getName}\n");
  print("Age:${teacher.getAge}\n");
  print("Address:${teacher.getAddress}\n");
  teacher.displayCoursesTaught();
}
