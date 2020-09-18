import 'file:///G:/BITM/Flutter_batch_1/quizzler/lib/model/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions('You can lead a cow down stairs but not up  stairs.', false),
    Questions('Approximately on quarter of human bones are in the feet.', true),
    Questions('A slug\'s blood is green.', true),
    Questions('Some cats are actually allergic to human', true),
    Questions('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',true),
    Questions('It is illegal to pee in the Ocean in Portugal.',true),
    Questions('No piece of square dry page can be folded in half more than 7 times.',false),
    Questions('In London, UK, if you happen to die in the house of Parliament, you are technically'
        'entitled to a state funeral, because the building is considered too sacred a place.',true),
    Questions('The loudest sound produced by any animal is 188 decibels. that animal is the African Elephant',false),
    Questions('The total surface area of two human lungs is approximately 70 square meter',true),
    Questions('Google was originally called\"Backrub\".',true),
    Questions('Chocolate affects a dog\'s heart and nerves system; a few ounce are enough to kill a small dog.',true),
    Questions('In west Verginia USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',true),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber >= _questionBank.length - 1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }
}