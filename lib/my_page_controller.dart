import 'package:get/get.dart';
class MyPageController extends GetxController{
  final RxInt number=0.obs;
  final RxBool isNumberTen=false.obs;
  void addToNumber(){
    number.value++;
    if(number.value==10){
      isNumberTen(true);
    }
  }
}