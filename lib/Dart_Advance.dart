
void main(){
  appendDartBeforPrint('Hello World');
  appendLearn('Hello World');
  print(add(1, 2));
  print(sub(2, 1));

  /**
   * Anonymous function
   */

  var list1 = [1,2,3,4,5];
  list1.forEach((element) {print('Hii');});
  list1.forEach((element) =>print('OK'));

  /**
   * Exception - try catch
   */
  try {
    print(5 ~/ 0);
  }catch(e){
    print(e);
  }

  try {
    print(5 ~/ 0);
  } on IntegerDivisionByZeroException catch(e){
    print('Integer can not be divided by zero');
  }catch(e){
    print(e);
  }finally{
    print("Done");
  }

  try {
    var n='A';
    print(double.parse(n));
  } on IntegerDivisionByZeroException catch(e){
    print('Integer can not be divided by zero');
  }catch(e){
    print("Error - ${e}");
  }finally{
    print("----------");
  }
}

/**
 * Function
 */
appendDartBeforPrint(String message){
  print('Dart ${message}');
}

/**
 * Another way
 */
appendLearn(String message)=>print('Learn ${message}');

/**
 * return function
 */
int add(int n1, int n2){
  return n1+n2;
}

/**
 * Another way of return
 */
int sub(int n1, int n2)=> n1-n2;