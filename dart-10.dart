void main(){
  someClass x= someClass();
  print(x.ano);
  x.something();
}
class anotherClass{
  int ano= 42;
  void something()=> print(ano);
}

class someClass extends anotherClass{}
