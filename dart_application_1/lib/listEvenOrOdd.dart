void main (){
  List numbers = [0,1,2,3,4,5,6,7,8,9,10];
  for (var no in numbers){
    print("number is $no");
    switch (no %2){
      case 0 :
        print("even");
        break;
      default:
        print ('odd');
    }
  }
}