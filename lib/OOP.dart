import 'package:Dart_Learn/Child.dart';
import 'package:Dart_Learn/Parent.dart';
import 'package:Dart_Learn/Student.dart';

void  main(){
  Student stu =  Student('Dart', 3000);
  print(stu.toString());

  Student stu1 = Student.name('Dart', 30000);
  print(stu.toString());

  Parent p = Child();
  p.display("Hii");

  Child c = Child();
  c.id=3000;
  c.name="Dart";
  c.display("Ok");
  c.displayChild();
}