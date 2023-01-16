void main(){
  var a= Tollerence(value :6);
  print(a);
}

bool Tollerence({required int value,int min=5, int max=10}){
  return min<=value && max<= max;
}