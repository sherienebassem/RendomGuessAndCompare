import 'dart:math';
import 'dart:io';
// function (validate input)
int validEX(int input) {
  var str = r"^\d{1,2}$";
  RegExp reg = RegExp(str);
  if (reg.hasMatch(input.toString())) {
    return input;
  } else {
    return 0;
  }
}
// function (Guess  random number with computer )
int randomComputerGuess() {
  Random ran = Random();
  return ran.nextInt(50);
}
// function (Ask user input for Guess Number )
int askUserInput(){
  print("Welcome Guess Number Game :");
  print("Enter Your Guess Number :");
  String input=stdin.readLineSync();
  int convertInput=int.parse(input);
  return convertInput;
}

Map <bool,String> compareAnswers(int computerGuess , int userGuess){
  if (userGuess < computerGuess){
    return {false : "Too Low"};
  }else if (userGuess > computerGuess){
    return {false : "Too High"};
  }else {
    return {true : "You Guessed it"};
  }
}


