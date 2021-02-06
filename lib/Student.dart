class Student{
  //_ is used to make fields private
  String _name;
  int _id;

  //Constructor
  Student(this._name, this._id);

  //named Constructor
  Student.name(this._name, this._id);

  //factory constructor
  factory Student.fromJson(Map<String, Object> json){
      return Student(json['name'], json['id']);
  }

  //Getter
  int get id => _id;

  //Setter
  set id(int value) {
    _id = value;
  }

  //Getter
  String get name => _name;

  //Setter
  set name(String value) {
    _name = value;
  }

  @override
  String toString() {
    return 'Student{_name: $_name, _id: $_id}';
  }
}