int a[][] = {{5,1,7,9,3,6,2,4,8},{9,6,2,1,8,4,5,3,7},{3,8,4,5,7,2,6,1,9},{6,9,8,4,5,7,3,2,1},{4,2,1,3,6,9,8,7,5},{7,5,3,8,2,1,4,9,6},{8,3,9,7,4,5,1,6,2},{1,4,6,2,9,8,7,5,3},{2,7,5,6,1,3,9,8,4}};
int l[] = {23,36,45,57};
int b[][] = new int [9][9];
int li;

int t =0;
int k = int(random(4));;

void boxes(){
  for (int i = 0 ; i < 10 ;i++)
  {
    if(i%3 == 0)
    {
      strokeWeight(2);
      line(0,t,554,t);
      line(t,0,t,554);
      strokeWeight(1);
      t += 62;
    }
    else
    {
      strokeWeight(1);
      line(0,t,554,t);
      line(t,0,t,554);
      t += 61;
    }
  }
  
  fill(0, 102, 153);
  textSize(50);
  textAlign(CENTER);
  text("!LEVELS!",277,600);
  textSize(30);
  text("1.BEGINNER",277,632);
  text("2.EASY",277,668);
  text("3.MEDIUM",277,704);
  text("4.HARD",277,742);
  text("Entry to level is RANDOM",277,776);
  text("got "+(k+1), 277,810);
}


void numbers(){
   
  println(k);
  int c =0;
  while(c != l[k]){
    int r1 = int(random(9));
    int r2 = int(random(9));
    if(b[r1][r2] == 0)
    {
      continue;
    }
    else
    {
      b[r1][r2] = 0;
      c++;
    }
  }
  int indx = 32;
  int indy = 52;
  int j;
  for (int i =0 ; i < 9 ;i++){
    for (j = 0 ; j< 9 ;j++){
      if(j%3 == 0)
      {
        textAlign(CENTER);
        textSize(50);
        if(b[i][j] == 0)
        text(" " , indx , indy );
        else
        text(b[i][j] , indx , indy );
        indx += 62;
      }
      else
      {
        textAlign(CENTER);
        textSize(50);
        if(b[i][j] == 0)
        text(" " , indx , indy );
        else
        text(b[i][j] , indx , indy );
        indx += 61;
      }
    }
    indx = 32;
    if(j%3 == 0)
    indy +=62;
    else
    indy +=61;
  }
  //textAlign(CENTER);
  //textSize(60);
  //text(b[0][0] , 32 ,52);
      
}
  
  
  
void setup() {
  size(554,830);
  
  
    for (int i = 0 ;i < 9; i++)
  {
    for (int j = 0 ; j<9 ;j++)
    {
      b[i][j] = a[i][j];
    }
  }
  
  background(153);
  
  //textAlign(LEFT);
  //textSize(40);
  //text("  SELECT THE LEVEL U NEED",0,180);
  
  //textSize(30);
  //text("BEGINNER",0,225);
  //text("EASY",0,260);
  //text("MEDIUM",0,295);
  //text("HARD",0,330);
  
  //while(true){
  //  if(mousePressed && mouseY >=225 && mouseY <=259){
  //    li =0;
  //    break;
  //  }
  //  else if(mousePressed && mouseY >=261 && mouseY <=294){
  //    li =1;
  //    break;
  //  }
  //  else if(mousePressed && mouseY >=296 && mouseY <=329){
  //    li =2;
  //    break;
  //  }
  //  else if(mousePressed && mouseY >=331 && mouseY <=360){
  //    li =3;
  //    break;
  //  }
  //}
  boxes();
  numbers();

}

int count = 0;
int x = 10;
int y = 10;
int ke;
  
void draw() {
  if(count>100)
  {
    fill(153);
    noStroke();
    rect(0,554,554,850);
    
  }
  count++;
   if(count>100)
   {
     strokeWeight(2);
     stroke(0);
     line(0,692,554,692);
     line(0,556,554,556);
     line(0,828,554,828);
    for(int i = 0; i<=5;i++)
      {
          line(110.8*i,556,110.8*i,828);
          fill(0);
          textSize(100);
          textAlign(CENTER);
          if(i<5){
          if(i != 0)
          text(i,55+110*(i),650);
          else
          text("X",55,650);
          text(i+5,55+110*(i),780);
          }
      }
   }
    
    
  
}
