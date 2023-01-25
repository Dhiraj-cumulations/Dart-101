void main(){
  var three = two();
  three.name();
}

class one{
  void name(){
    print('Dhiraj');
  }
}

class two extends one{
  void name(){
    
    print('Nirne');
    super.name();
  }
}
