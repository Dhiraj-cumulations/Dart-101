void main(){
  final ani= platypus();
  print(ani.isAlive);
  ani.eat();
  ani.move();
  ani.lay_eggs();
  print(ani);
}

abstract class Animal{
  bool isAlive= true;
  void eat();
  void move();
  @override
  String toString(){
    return "I am $runtimeType";
  }
}

class platypus extends Animal{
  void eat(){
    print("munch munch");
  }
  void move(){
    print("glide glide");
  }
  void lay_eggs(){
    print("yess!");
  }
}
