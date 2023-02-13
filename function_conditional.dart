void main(){
  String a= "Dhiraj";
  String b= "Nirne";
  //String c= "Cool";
  var d = fullName(a,b);
  print(d);
}

String fullName(String firstName, String LastName, [String? Title]){
  if(Title!=null){
    return  "$Title $firstName $LastName";
  }
  else{
    return "$firstName $LastName";
  }
}
