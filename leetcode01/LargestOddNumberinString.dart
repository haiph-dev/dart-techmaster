void main() {
  print(largestOdd('52'));
}

String largestOdd(String n){  
  try{
    var nList = n.split('');
    if (int.parse(nList.last) %2 != 0) return nList.toString();

    List<int> oddList = [];
    for (int i=0; i<nList.length; i++){
      if (int.parse(nList[i]) %2 != 0) 

    }
  }
}