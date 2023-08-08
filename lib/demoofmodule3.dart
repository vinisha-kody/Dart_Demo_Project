import 'package:demoofmodule3/demoofmodule3.dart' as demoofmodule3;
import 'package:demoofmodule3/demoofmodule3.dart';

class A
{
  void display(){}
  var a1;
  var a2;
  var a3;
  var v;
  String _svar="";
  final String finalvar="Final_Variable";

  //Getter and Setter without get & set
  void setVar(String svar)
  {
    this._svar=svar;
  }

  String getVar()
  {
    return _svar;
  }

  //Getter & Setter with get & set
  set setVariable(String svar) => this._svar=svar;
  String get getVariable => _svar;


  //parameterized constructor
  A(var a1,var a2,var a3,[String? a4])
  {
    this.a1=a1;
    this.a2=a2;
    this.a3=a3;
  }

  //named constructor
  A.namedConstructor(var a1, var a2, var a3){
    print('${a1}${a2}${a3}');
  }

  //static variable
  static const staticvar="staticvariable";

  //static method
  static void staticMethod()
  {
    print(staticvar);
  }

  //instance method
  void displayVarOfA()
  {
    print(staticvar);
    print(a1);
    print("method of class A");
  }
}


class B extends A
{
  var b1;
  var b2;
  var b3;

  B(super.a1, super.a2, super.a3);
  void displayVarOfB()
  {
    print("Method of B");
  }
  B.namedConstructor(var b1, var b2, var b3) : super.namedConstructor(b1,b2,b3);

  @override
  void display() {
    // TODO: implement display
  }
}
class C implements A,B
{
  @override
  var a1;

  @override
  var a2;

  @override
  var a3;

  @override
  var b1;

  @override
  var b2;

  @override
  var b3;

  @override
  void displayVarOfA() {
    print("Method of class C");
  }

  @override
  void displayVarOfB() {
    print("Method of Class C");
  }

  @override
  // TODO: implement finalvar
  String get finalvar => throw UnimplementedError();

  @override
  String _svar="";

  @override
  var v;

  @override
  String getVar() {
    // TODO: implement getVar
    throw UnimplementedError();
  }

  @override
  // TODO: implement getVariable
  String get getVariable => throw UnimplementedError();

  @override
  void setVar(String svar) {
    // TODO: implement setVar
  }

  @override
  set setVariable(String svar) {
    // TODO: implement setVariable
  }

  @override
  void display() {
    // TODO: implement display
  }

}
class D
{
  final String? _finalvar;
  const D(this._finalvar);
  const D.named(this._finalvar);
}

class E
{
  int a=10;
  int b=20;
  E(int a, int b,{int? c}){
    print('${a} ${b} ${c}');
  }
  void noParameterNoReturn()
  {
    print("No Parameter & No Return");
  }
  void ParameterNoReturn(String name,int age,{String? var1,String? var2})
  {
    print('$name $age');
    print('$var1 $var2');
  }
  String noParameterReturn()
  {
    return "No Parameter & No Return";
  }
  String ParameterReturn(String param,[String? optionalparam])
  {
    return param+optionalparam!;
  }
}

//Abstract class
abstract class F
{
  void methodOfF1();
  void methodofF2(){}
}
class G extends F
{
  @override
  void methodOfF1() {
    // TODO: implement methodOfF1
  }

}
// Example of Enum
enum weather{sunny,snowy,cloudy,rainy}

void main() {

  const D objd=D("Hello World");
  E obje=E(10,20);
  obje.ParameterNoReturn("Vinisha",21);
  int intvar=5;
  bool boolvar=true;
  int a=10;
  int b=20;
  //anonymous fucntion
  Function c= (a,b) => (a>b) ? a : b;

  List<String> languages=["Android","Flutter","Java","C","Kotlin"];
  print('$languages ${languages[0]} ${languages.indexOf("Android")} ${languages.length} ${languages.first} ${languages.last} ${languages.isEmpty} ${languages.isNotEmpty} ${languages.reversed}');
  languages[4]="PHP";
  languages.add("Python");
  languages.addAll(["HTML","CSS","JAVASCRIPT"]);
  languages.insert(2,"Ruby");
  languages.insertAll(5,["Dart","Angular"]);
  languages.remove("Android");
  languages.removeAt(5);
  languages.removeLast();
  languages.removeRange(0, 3);

  List<int> numlist=[2,3,4,6,7,9,1,6];
  List<int> numlist2=numlist.where((element) => element.isOdd).toList();

  Set<int> numset1={1,2,3,4,5};
  Set<int> numset2={3,4,5,6,7};

  print('${numset1.first} ${numset2.last} ${numset1.isEmpty} ${numset2.isNotEmpty} ${numset1.length}');
  numset1.add(10);
  numset1.addAll({6,7,8});
  numset1.remove(3);
  var numdiff=numset1.difference(numset2);
  var inter=numset1.intersection(numset2);
  print(numset1.elementAt(5));
  numset1.clear();

  Map<String,int> mapvar={"flutter":100,"Android":90,"java":80,"php":70,"javascript":60};
  print(mapvar);
  print('${mapvar["flutter"]}');
  print('${mapvar.keys} ${mapvar.values} ${mapvar.length} ${mapvar.isEmpty} ${mapvar.isNotEmpty}');
  mapvar["ruby"]=50;
  print(mapvar);
  mapvar["flutter"]=10;
  print('${mapvar.keys.toList()} ${mapvar.values.toList()} ${mapvar.containsKey("flutter")} ${mapvar.containsValue(10)} ');
  mapvar.remove("flutter");
  for(MapEntry values in mapvar.entries)
  {
    print('${values.key} ${values.value}');
  }
  mapvar.removeWhere((key, value) => value>10);

  //Example of For Each Loop
  languages.forEach((values) => print(values) );

  //Example of For in loop
  for(String values in languages)
  {
    print(values);
  }

  //Example of While loop
  int i=1;
  while (i <= 10) {
    if (i == 5) {
      i++;
      //continue;
      break;
    }
    print(i);
    i++;
  }

  // while(i>=1)
  // {
  //     print(i);
  //     i--;
  // }

  //Eample of Do While Loop
  int j=10;
  do
  {
    print(j);
    j--;
  }
  while(j>=1);

  // Example of For loop
  for(int i=0;i<3;i++)
  {
    print("for loop");
  }

  // Example of If Statement
  if(boolvar)
  {
    print("This is the example of if condition");
  }

  // Example of If Else Condition
  if(intvar == 10)
  {
    print("condition is false");
  }
  else
  {
    print("condition is true");
  }

  // Example of if else if Condition
  if(intvar==1)
  {
    print("value is 1");
  }
  else if(intvar==2)
  {
    print("value is 2");
  }
  else if(intvar==3)
  {
    print("value is 3");
  }
  else
  {
    print("the actuall value is 5");
  }

  // Example of Switch Case Statement
  switch (weather) {
    case weather.sunny:
      print("Weather is sunny");
      break;
    case weather.snowy:
      print("Weather is snowy");
      break;
    case weather.cloudy:
    case weather.rainy:
      print("There may be rain outside");
      break;
    default:
      print("Sorry I am not familiar with such weather.");
      break;
  }
  print(objd._finalvar);
  A obja=A(5,10,15);
  obja.setVariable="helloworld";
  print(obja.getVariable);
  C objc=C();
  objc.displayVarOfA();
  objc.displayVarOfB();
  obja.a1="example of default getter";
  obja.a2=5;
  assert(obja.a2==5,"The value is equal");
  print(obja.a1);
  print(obja.a2);

  //synchronous programming
  print("sync1");
  print("sync2");
  print("sync3");
  print("sync4");
  print("sync5");

  //asynchronous programming
  print("sync1");
  print("sync2");
  Future.delayed(Duration(seconds: 3),() => print("sync3"));
  print("sync4");
  print("sync5");

  Future<String> middleFunction(){
    return Future.delayed(Duration(seconds:5), ()=> "Hello");
  }

  void getData() async{
    String data = await middleFunction();
    print(data);
  }

  print("start");
  getData();
  print("end");
}