void main(){
  final jon= person('jon', 'snow');
  final jane= Student('jane','snow');
 // print(jon.fullName);
  //print(jane.fullName);

  final child= SomeChild();
  child.dowork();

}
class person{
  person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString()=> fullName; 

}

class Student extends person{
  Student(String givenName, String surname): super(givenName, surname);
  @override
  String get fullName => '$surname, $givenName';
}

class Someparent{
  void dowork(){
    print('working');
  }
}

class SomeChild extends Someparent{
  @override
  void dowork(){
    print('baby working');
    super.dowork();
  }
}