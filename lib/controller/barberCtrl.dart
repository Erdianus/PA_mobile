import 'package:get/get.dart';

enum Barber { joniJontor, udinSedunia, jemesBond, jordiTorres }

class BarberController extends GetxController {
  var barbermans = Barber.joniJontor.obs;

  onChange(value) {
    barbermans(value);
  }
}
