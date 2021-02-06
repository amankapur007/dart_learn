import 'dart:io';

void main(){
  print('Dart Learn');

  //Dart data types
  //var
  //Can store any type of data in this , but next time we can assign same type of data which is done at beginning
  var name = 'Dart';
  print(name);
  //String
  String github='github.com';
  print(github);
  //int
  int number=100;
  print(number);
  //boolean
  bool flag = true;
  print(flag);
  //Double
  double price=1.0;
  print(price);
  //Dynamic
  //We can reassign any time of data ,irrespective of what data was assigned at the beginning

  dynamic a='A';//As per dart documentation its better to use single quote until ur string does not contain ' quote
  print(a);
  a=1;//This is not possible with var
  print(a);

  /**
   * Print
   */

  var dart = 'Dart';
  var num = 3000;
  print('${dart} love you ${num}');

  /**
   * String Length
   */
  print('Length of ${dart} is ${dart.length}');

  /**
   * Default value
   */

  int b;
  String c;
  bool d;
  double e;
  print('int: ${b} String: ${c} bool: ${d} double: ${e}');

  /**
   * Input
   */

  print('Enter the name');
  var uName = stdin.readLineSync();
  stdout.write('Name entered is ${uName}');//this will print next statement in same line
  print('Name entered is ${uName}');

  /**
   * type Conversion
   */

  String f='1';

  int iNum = int.parse(f);
  print('The type od iNum is ${iNum.runtimeType}');
  double dNum = double.parse(f);
  print('The type od dNum is ${dNum.runtimeType}');

  /**
   * final and const
   * In flutter (final will not reassign the value in hot reload where as const at hot reload will reassign the value )
   */

  final g = 'G';
  final nNum1 = 1;
  const pi =3.14;

  //lets try to change value
  //This was giving error -> pi=3.5;

  /**
   * Arithmetic operation
   */

  int n1=10;
  int n2=5;
  print("n1+n1 = ${n1+n2}");
  print("n1-n1 = ${n1-n2}");
  print("n1*n1 = ${n1*n2}");
  print("n1/n1 = ${n1/n2}");
  print("n1%n1 = ${n1%n2}");

  //postfix
  int x= 30;
  print(x++);//will increment but wont use it
  print(x);//Now it will use
  //prefix
  int y=20;
  print(++y);//will increment and use
  print(y);//Now also it will use

  /**
   * Relational operator
   */

  var a1=30;
  var b1=20;

  print("a1>b1 - ${a1>b1}");
  print("a1<b1 - ${a1<b1}");
  print("a1==b1 - ${a1==b1}");
  print("a1!=b1 - ${a1!=b1}");

  /**
   * Type operator
   */

  var nNum3=10;
  var nName3= "Learn";
  print(nNum3 is int);
  print(nName3 is! String);

  /**
   * Logical Operator
   */

  bool check1=true;
  bool check2=false;

  print(check1 && check2);//Both to be true for true
  print(check1 || check2);//Any one to be true for true
  print(!(check1 || check2));//whatever we get result it reverts that

  //bitwise - , &, |, ~, <<, >>

  /** Ternary operator
   *
   */

  var x11=20;
  var y11=null;
  var val11 = y11??x11;//if y11 is null then assign x11 value
  print(val11);

  /**
   * List
   */

  List list = []; //or List<int> list = List<int>();
  list.add(0);
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);

  print(list);
  print(list.length);

  /**
   * Loops
   */

  for (var i=0;i<list.length;i++){
    print('${i} - ${list[i]}');
  }

  list.forEach((element) {
    print('${list.indexOf(element)}-${element}');
  });

  //Important function

  print(list.first);//gets the first element
  print(list.isEmpty); // checks if list is empty
  print(list.isNotEmpty); // checks if not empty
  print(list.length); // gets the length
  print(list.reversed); // reverse the list
  // print(list.single) -> will throw exception as we have more then 1 element;

  /**
   * Set - will contain unique values
   */

  var names = <String>{'A','B','C','D'};// or Set<?> names = <?>{};
  print(names);
  print(names.runtimeType);
  names.add('C');
  print(names);

  //important function
  print(names.first);//gets the first element
  print(names.isEmpty); // checks if list is empty
  print(names.isNotEmpty); // checks if not empty
  print(names.length); // gets the length
  print(names.last);//gets the last element

  var x5 = <int>{1,2,3,4,5};
  var y5 = <int>{3,7,8,9};
  var z5 = <int>{10,11,1,2,12};

  print('x5 union y5 - ${x5.union(y5)}');// combine both
  print('x5 intersection y5 - ${x5.intersection(y5)}');//common
  print('y5 difference x5 - ${y5.difference(x5)}');//not so common

  /**
   * Map
   */

  var map = {'name':'learn','age':3000};//or var map =  Map();
  print(map);
  print(map['name']);
  map['feeling'] = 'happy';
  print(map);

  for(var i in map.entries){
      print('${i.key} - ${i.value}');
  }

  /**
   * if , else , if else , switch
   */

  var no1=5;
  var no2=4;
  if(no1>no2){
    print('no1 is greater then no2');
  }else{
    print('no2 is greater then no1');
  }
  no1=4;
  if(no1>no2){
    print('no1 is greater then no2');
  }else if(no1==no2){
    print('no1 is equal to no2');
  }else{
    print('no2 is greater then no1');
  }


  var n10=2;
  switch(n10){
    case 1:
      print('1');
      break;
    case 2:
      print('2');
      break;
    case 3:
      print('3');
      break;
    case 4:
      print('4');
      break;
    default:
      print('something else');
      break;
  }

  /**
   * Iteration
   */

  for(int i=1;i<=10;i++){
    print(i);
  }

  var lllist = [11,22,33,44,55,66,77,88,99,1010];
  for (var i in lllist){
    print(i);
  }

  var i=100;
  while(i<=110){
    print(i);
    i++;
  }

  i=1000;
  //do always runs one
  do{
    print(i);
    i++;
  }while(i<1000);

  /**
   * break and continue
   */

  print('Continue');
  for(var i=1;i<=10;i++){
    if(i==5){
      continue;
    }
    print(i);
  }

  print('Break');
  for(var i=1;i<=10;i++){
    if(i==5){
      break;
    }
    print(i);
  }


}
