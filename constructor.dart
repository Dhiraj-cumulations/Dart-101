class Abc{
  String? Name;
  int? Age;
  Abc(){
    print("Inside the constructor");
  }
  Abc.yo(String n, int a){
    Name= n;
    Age= a;
  }
  void ShowData(){
    print("Name: $Name\nAge: $Age");
  }
}
void main(){
  Abc ref= Abc();
  //print(ref);
  Abc new1= Abc.yo("Dhiraj",22);
  new1.ShowData();
}
