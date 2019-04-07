import 'package:dartProjects/funEXRanTryCa.dart';

main() {
  int computerGuess = randomComputerGuess();
  int userInput ;
  int userValidNumber ;
  try{
    do{
      userInput = askUserInput();
      userValidNumber = validEX(userInput);
      var result = compareAnswers(computerGuess,userValidNumber);
      print(result);
    }while(computerGuess != userValidNumber);
  }on FormatException catch(e){
    print("Enter the number correctly and then restart App");
  }finally{
    do{
      userInput = askUserInput();
      userValidNumber = validEX(userInput);
      var result = compareAnswers(computerGuess,userValidNumber);
      print(result);
    }while(computerGuess != userValidNumber);
  }


}


