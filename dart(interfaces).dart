void main(){
  final repository= DataRepository();
  final temp= repository.fetchTemp('Banglore');
}

abstract class DataRepository{
  factory DataRepository()=> FakeWebServer();
  double? fetchTemp(String city);

}

class FakeWebServer implements DataRepository{
  @override
  double? fetchTemp(String city){
    return 40.0;
  }
}
