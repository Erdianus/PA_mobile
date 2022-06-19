import 'package:get/get.dart';

enum Haircut { bobcurly, curlyfade, messyhair, pompadour, undercut }

class RadioController extends GetxController {
  var haircuts = Haircut.bobcurly.obs;

  onChange(value) {
    haircuts(value);
  }

  jenisHaircuts(var haircut) {
    var jenisHaircut = "";
    if (haircut.haircuts.value == Haircut.bobcurly) {
      jenisHaircut = "Bob Curly";
    } else if (haircut.haircuts.value == Haircut.curlyfade) {
      jenisHaircut = "Curly Fade";
    } else if (haircut.haircuts.value == Haircut.messyhair) {
      jenisHaircut = "Messy Hair";
    } else if (haircut.haircuts.value == Haircut.pompadour) {
      jenisHaircut = "Pompadour";
    } else if (haircut.haircuts.value == Haircut.undercut) {
      jenisHaircut = "Undercut";
    }
    return jenisHaircuts;
  }
}
