import 'package:get/get.dart';

enum Haircut { bobcurly, curlyfade, messyhair, pompadour, undercut }

class RadioController extends GetxController {
  var haircuts = Haircut.bobcurly.obs;

  onChange(value) {
    haircuts(value);
  }
}
