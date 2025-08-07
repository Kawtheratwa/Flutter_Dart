
class Student
{
  
  String? _name;
  int? _grade;
  String?  _email;
  String? _address;
  String?  _phone;


  Student(String name,int grade )
  {
    _name = name;
    _grade =  grade;
  }
  
  // getter 
  String? get getname => _name;
  int? get getgrade => _grade;
  String? get getemail => _email;
  String? get getadd => _address;
  String? get getphone=> _phone;


 // setter
 set name(String? name) => _name = name;
 set grade(int? grade) => _grade = grade;
  set email(String? email) => _email = email;
 set address(String? address) =>_address =address;
 set phone(String? phone) => _phone = phone;


@override
String toString()
{
  return 'Student  : $_name \n' 
         'Grade : $_grade \n'
         'Email : ${_email ?? "Not Available"}\n' 
         'Phone : ${_phone ?? "Not Available"}\n'
         'Address : ${_address ?? "Not Available"}\n';

}



}


  void Search(List<Student> students, double grade, {bool value = true}) {
  for (var student in students) {
    final g = student._grade;
    if (g == null) continue;

    if ((value && g > grade) || (!value && g < grade)) {
      print(student);
    }
  }
}


// Main Fun :
void main()
{
 List <Student> students =[];
 Student student1 = new Student("KOKO",99);
 Student student2 = new Student( "Zainab", 89);
 Student student3 = new Student( "Balsam",  95);

 students.add(student1);
 students.add(student2);
 students.add(student3);

//6. Use setters to update at least two optional properties
student2.email="EngZainabAtwa@gmail.com";
student2.phone = "05982456789";



  // Example usage
  print(" Students with grade > 89:");
  Search(students, 89);
}







