void main(){
  var y= first();
  print(y.x);
  print(y.v);
  
  y.func();
}


class first{
  int x= 10;
  String v= "YO!";
  
  void func(){
    print("Hello Dart.");
  }
}

