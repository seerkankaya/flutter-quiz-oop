import 'question.dart';
class QuizBrain{
  int _questionNumber=0;

  List<Question> _questionBank = [   //Alt çizgi ekleyerek encapculation yapmış oluyoruz.
    Question(questionText:'Hayvanları sever misin ?',questionAnswer:true),
    Question(questionText:'Yıldızları  gündüz görebilir misin ?',questionAnswer:false),
    Question(questionText:'Genel olarak mutlu bir insan mısın ?',questionAnswer:true),

    Question(questionText:'Bugün erken kalktın mı ?',questionAnswer:true),
    Question(questionText:'Bu sabah süt içtin mi ?',questionAnswer:false),
    Question(questionText:'Tanımadığın bir insana karşı ön yargılımısın ?',questionAnswer:true),

    Question(questionText:'Elma her zaman kırmızı renkte midir ?',questionAnswer:false),
    Question(questionText:'Hiç sinema\'ya gittin mi ?',questionAnswer:true),
    Question(questionText:'En yakın arkadaşına söyleyemediğin bir şey var mı ?',questionAnswer:false),

    Question(questionText:'Hayata dair umudun var mı ?',questionAnswer:true),
    Question(questionText:'Spor yapmayı seviyormusun ?',questionAnswer:true),
    Question(questionText:'Oyun oynamayı severmisin ?',questionAnswer:true),


  ];

  void nextQuestion()
  {
     if(_questionNumber < _questionBank.length-1)
       {
         _questionNumber++;
       }

  }
String getQuestionText()
{
  return _questionBank[_questionNumber].questionText;

}

bool getCorrectAnswer()
{
  return _questionBank[_questionNumber].questionAnswer;
}

 bool isFinished()
 {

   if(_questionNumber >= _questionBank.length-1){
     return true;
   }
   else{
     return false;
   }


 }

  void reset() {
    _questionNumber=0;
  }



}