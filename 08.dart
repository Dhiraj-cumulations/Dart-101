void main(){
  person p1= person();
  p1.setData("Dhiraj",22);
  p1.showData();
}

class person{
  String? Name;
  int? Age;
  
  void setData(String a, int b){
    Name= a;
    Age= b;
  }
  
  void showData(){
    print("Name: $Name\nAge: $Age");
    
  }
}