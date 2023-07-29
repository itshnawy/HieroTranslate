import 'dart:io';
final Map<String, String> hieroToEnglish = {
  "3":"𓄿",
  "a": "𓀀",
  "b": "𓃀",
  "c": "𓁚",
  "d": "𓂧",
  "e": "𓃒",
  "f": "𓆑",
  "g": "𓎼",
  "j":"𓇋",
  "h": "𓉔",
  "ḥ":"𓎛",
  "ḫ":"𓐍",
  "ẖ":"𓄡",
  "i": "𓇋",
  "k": "𓎡",
  "l": "𓆣",
  "m": "𓅓　𓐝",
  "n": "𓈖　𓋔",
  "o": "𓉐",
  "p": "𓊪",
  "q": "𓈎",
  "r": "𓂋",
  "s": "𓋴",
  "š": "𓈙",
  "ṯ": "𓍿",
  "ḏ": "𓆓",
  "t": "𓏏",
  "u": "𓌳",
  "v": "𓍢",
  "w": "𓅱 𓏲",
  "x": "𓏏",
  "y": "𓇋𓇋",
  "z": "𓊃",
  "ʿ": "𓂝"
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
