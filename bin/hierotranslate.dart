import 'dart:io';
final Map<String, String> hieroToEnglish = {
  "a": "𓀀",
  "b": "𓁐",
  "c": "𓁚",
  "d": "𓁶",
  "e": "𓃒",
  "f": "𓃾",
  "g": "𓄿",
  "h": "𓅿",
  "i": "𓆈",
  "k": "𓆛",
  "l": "𓆣",
  "m": "𓆭",
  "n": "𓇯",
  "o": "𓉐",
  "p": "𓊛",
  "q": "𓊨",
  "r": "𓊯",
  "s": "𓋑",
  "t": "𓌇",
  "u": "𓌳",
  "v": "𓍢",
  "w": "𓎯",
  "x": "𓏏",
  "y": "𓏛",
  "z": "𓏤"
};

String translateHiero(String hiero) {
  return hieroToEnglish[hiero] ?? '';
}

String translateHieroString(String hiero) {
  final List<String> characters = hiero.split('');
  final List<String> translations = characters.map(translateHiero).toList();
  return translations.join('');
}


void main() {
  print('Welcome to the CMD Hieroglyphics Translator!');
  while (true) {
    print('\nEnter a hieroglyphics string to translate (or "exit" to quit):');
    var input = stdin.readLineSync();
    if (input!.toLowerCase() == 'exit') {
      break;
    }
    var translated = translateHieroString(input);
    print('Result: $translated');
  }
  print('\nThank you for using the HieroTranslate Tool');
}
