library('random')

player=0
computer=0
max<-as.numeric(readline("Enter the limit score : "))
while(TRUE){
  com<-sample(1:3,1)
  pl<-as.integer(readline('1.Stone
2.Paper
3.Scisser
Enter your choice : '))
  
  if(player<max && computer<max){
    if (com == pl){
      print("Its Tie")
      cat("computer choose : ", com)
    }else if(pl==1 && com == 3 || pl==2 && com == 1 || pl==3 && com== 2){
      print("win")
      cat(
        "computer choose : ", com)
      player<<-player+1
    }else{
      print('loose')
      cat("computer choose : ", com)
      computer<<-computer+1
    }
  }else if(player >= max || computer >= max) {
    if(player >computer){
      print("You win")
    }else {
      print("You loose")
    }
    cat("Your score : ", player , "\n")
    cat("opponent score : ", computer ,"\n")
    break
  }
}

