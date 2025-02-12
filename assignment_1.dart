// A

abstract class Role {

  void displayRole();
}


// B

class Person implements Role {

  String name;   int age;   String address;

  Person(this.name, this.age, this.address);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override

  void displayRole() {
    print("Role: Person");
  }
}


// C

class Student extends Person {

  String studentID;   String grade;
  List<int> courseScores;

  Student(super.name, super.age, super.address, this.studentID, this.grade, this.courseScores);

  @override

  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {

    if (courseScores.isEmpty) return 0.0;

    int total = courseScores.reduce((a, b) => a + b);

    return total / courseScores.length;
  }

  void displayStudentInfo() {

    displayRole();

    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
  }
}


// D

class Teacher extends Person {

  String teacherID;

  List<String> coursesTaught;

  Teacher(super.name, super.age, super.address, this.teacherID, this.coursesTaught);


  @override

  void displayRole() {
    print("Role: Teacher");
  }

  void displayTeacherInfo() {

    displayRole();

    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");

    for (String course in coursesTaught) {

      print("- $course");
    }
  }
}


// E

void main() {

  Student student = Student(
      "John Doe", 20, "123 Main St", "StudentId", "GradeA", [90, 85, 82]
  );

  Teacher teacher = Teacher(
      "Mrs. Smith", 35, "456 Oak St", "TeacherId", ["Math", "English", "Bengali"]
  );

  print("");
  print("Student Information:");
  print("");
  student.displayStudentInfo();

  print("----------");

  print("Teacher Information:");
  print("");
  teacher.displayTeacherInfo();

}

