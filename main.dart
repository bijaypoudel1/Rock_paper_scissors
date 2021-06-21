import 'dart:io';
import 'dart:math';
enum Move {
  rock,paper,scissors,
}
void main(){
  while(true){
    int rnd= Random().nextInt(3);

    stdout.write('Rock, Paper or Scissors (r,p,s)  ');
    final input= stdin.readLineSync();
    if(input=='r'||input=='p'||input=='s'){

    var ai = Move.values[rnd];
    print('you choose $input');
    print('AI choose $ai');
    if(input=='r'&&ai==Move.rock || input=='p'&&ai==Move.paper || input=='s'&&ai==Move.scissors){
      print('Draw ');
    }
    else if(input=='r'&&ai==Move.scissors || input=='s' &&ai==Move.paper||input=='p'&&ai==Move.rock ){
      print('You win  ');
    }
    else {
      print('Computer wins ');
    }

    // print(ai);
    }
    else if(input=='q'){
      break;
  }
    else{
      print('invalid input');
  }
  }


}
