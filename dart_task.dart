class Dart_task{
  String stack;
  bool learner;
  int availableTime;
  int count=0;
  
  

  String addStacks(String varx) {
    stack = varx;
    return stack;
  } 
  
  bool setMentorOrLearner(String rmb) {
    if(rmb=="learner")
      learner=true;

    else if(rmb=="mentor")
    learner=false;

    else
    learner=true;

    return learner;
  }

  int setAvailableTime(int time) {
    if(learner==false)
    availableTime = time;

    else
    availableTime = 0;

    return availableTime;
  }
  
    
  void getMentor(list1,stack,time) {
    
    for(var i in list1){
        if(i.stack==stack && i.availableTime==time)
          count+=1;}
    print("Found $count mentors!!");
}
  
}
void main(){
  var p1= Dart_task();
  p1.setMentorOrLearner("mentor");
  p1.addStacks("Web");
  p1.setAvailableTime(50);
  
  var p2= Dart_task();
  p2.setMentorOrLearner("mentor");
  p2.addStacks("Flutter");
  p2.setAvailableTime(50);
  
  var p3=Dart_task();
  p3.setMentorOrLearner("mentor");
  p3.addStacks("Flutter");
  p3..setAvailableTime(50);
  
  List <Dart_task>  list=[p1,p2,p3];
  
  var p4=Dart_task();
  p4.setMentorOrLearner("learner");
  p4.getMentor(list,"Flutter",50);
  
} 
 
