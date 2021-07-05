import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('Player 1 :  r for rock ,  p for paper , s for sissors');
    String? p1 = stdin.readLineSync();
    if (p1 == null || p1 != 'r' && p1 != 'p' && p1 != 's') {
      print('Invalid input');
    } else {
      print('Player 1 choose $p1 ');
      var c = Random().nextInt(3).toString();
      if (c == '0') {
        c = 'p';
      } else if (c == '1') {
        c = 'r';
      } else if (c == '2') {
        c = 's';
      }
      print('Computer choose $c');
      if (p1 == 'r' && c == 's' ||
          p1 == 'p' && c == 'r' ||
          p1 == 'r' && c == 's') {
        print('You win');
      } else if (c == 'r' && p1 == 's' ||
          c == 'p' && p1 == 'r' ||
          c == 'r' && p1 == 's') {
        print('Computer wins');
      } else if (c == 'r' && p1 == 'r' ||
          c == 'p' && p1 == 'p' ||
          c == 's' && p1 == 's') {
        print('Draw ');
      }
    }
  }
}
