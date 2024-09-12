float sx2 = 0; // star 2
float sy2 = 0;
float sx3 = 0;
float sy3 = 0;
float sx4 = 0;
float sy4 = 0;
float sx5 = 0;
float sy5 = 0;
int[] stars = new int[1]; //Stars decorative
float[] stars2 = new float[24];{ //Stars Parallax
stars2[0] = random(sy2,500); //Block 1
stars2[4] = sx2;
stars2[1] = random(sy2,500);
stars2[5] = sx2;
stars2[2] = random(sy2,500);
stars2[6] = sx2;
stars2[3] = random(sy2,500);
stars2[7] = sx2;
stars2[9] = random(sy2, 500);
stars2[8] = sx2;
stars2[10] = random(sy2, 500);
}
float[] stars3 = new float[24];{
  stars3[0] = random(sy3, 500);
  stars3[1] = sx3;
  stars3[2] = random(sy3, 500);
  stars3[4] = sx3;
  stars3[5] = random(sy3, 500);
  stars3[6] = sx3;
  stars3[7] = random(sy3, 500);
  stars3[8] = sx3;
  stars3[9] = random(sy3, 500);
  stars3[10] = sx3;
  stars3[11] = random(sy3, 500);
}
float[] stars4 = new float[24];{
  stars4[0] = random(sy4, 500);
  stars4[1] = sx4;
  stars4[2] = random(sy4, 500);
  stars4[4] = sx4;
  stars4[5] = random(sy4, 500);
  stars4[6] = sx4;
  stars4[7] = random(sy4, 500);
  stars4[8] = sx4;
  stars4[9] = random(sy4, 500);
  stars4[10] = sx4;
  stars4[11] = random(sy4, 500);
}
float[] stars5 = new float[24];{
  stars5[0] = random(sy5, 500);
  stars5[1] = sx5;
  stars5[2] = random(sy5, 500);
  stars5[4] = sx5;
  stars5[5] = random(sy5, 500);
  stars5[6] = sx5;
  stars5[7] = random(sy5, 500);
  stars5[8] = sx5;
  stars5[9] = random(sy5, 500);
  stars5[10] = sx5;
  stars5[11] = random(sy5, 500);
}
int starcount = 0;
float sx = 0; // star
float sy = 0;
float x = 40;
float y = 40; 
float xa = 0; //Moon
float ya = 0;
float xa2 = 0; //Moon2
float ya2 = 0;
float xa3 = 0; //Moon3
float ya3 = 0;
float xa4 = 0; //Moon4
float ya4 = 0;
float xa5 = 0; //Moon5
float ya5 = 0;
float xa6 = 0; //Moon6
float ya6 = 0;
float xa7 = 0; //Moon7
float ya7 = 0;
float xa8 = 0; //Moon8
float ya8 = 0;
float xa9 = 0; //Moon9
float ya9 = 0; 
float xa10 = 0; //Moon10
float ya10 = 0; 
float xa11 = 0; //Moon11
float ya11 = 0;
float xa12 = 0; //Moon12
float ya12 = 0;
float xa13 = 0; //Moon13
float ya13 = 0;
float xp = 0; //Player
float yp = 0;
int PlayerBool =0;
float xs = 0; //Pellet
float ys = -30; //Offscreen
float lx = 0; //Left side (Unused)
float ly = 0;
boolean bool = true;
int Count = 0; // For fail condition
int DumpBool = 0; //For Moons going to left. Will go to right if set to 1
int DumpBool2 = 0;
int DumpBool3 = 0;
int DumpBool4 = 0;
int DumpBool5 = 0;
int DumpBool6 = 0;
int DumpBool7 = 0;
int DumpBool8 = 0;
int DumpBool9 = 0;
int DumpBool10 = 0;
int DumpBool11 = 0;
int DumpBool12 = 0;
int DumpBool13 = 0;
//Space Invader Clone: Player Modifications and updown animations
void setup(){
  size(500,500); //Required
  background(0); //Black
  drawMoon(random(400,500),random(40,500)); //Moon1 Randomised InitialPos --Level1
  drawMoon2(random(400,500),random(40,500)); //Moon2 Randomised InitialPos
  drawMoon3(random(400,500),random(40,500)); //Moon3 Randomised InitialPos
  drawMoon4(random(600,650),random(40,500)); //Moon4 Randomised InitialPos --Level2
  drawMoon5(random(600,650),random(40,500));
  drawMoon6(random(600,750),random(40,500));
  drawMoon7(random(600,750),random(40,500));
  drawMoon8(random(700,850),random(40,500)); //Level 3
  drawMoon9(random(700,850),random(40,500));
  drawMoon10(random(700,850),random(40,500));
  drawMoon11(random(700,850),random(40,500));
  drawMoon12(random(700,850),random(40,500));
  drawMoon13(random(700,850),random(40,500));
  
  println(bool); //Testing purpose 
  star2(random(100,500), random(40,500)); //Parallax Field Items
  star3(random(450,600), random(40,500));
  star4(random(250,600), random(40,500));
  star5(random(100,600), random(40,500));
}
void draw(){
  CheckStarReturntoPosition(); //If stars reach certain area, default to other area on the right side of the screen.
  CheckForPelletPos();//Runs continuously and checks for PelletPos to ensure it is at 600x before going to -30y off screen.
  CheckToDestroyMoon(); //Should return Pellet to original position offscreen and Moon to offscreen position if working correctly. Same with subsequent moons. -- Level 1
  CheckToDestroyMoon2();
  CheckToDestroyMoon3();
  CheckToDestroyMoon4(); //Level 2 
  CheckToDestroyMoon5();
  CheckToDestroyMoon6();
  CheckToDestroyMoon7();
  CheckToDestroyMoon8();
  CheckToDestroyMoon9();// Level 3
  CheckToDestroyMoon10();
  CheckToDestroyMoon11();
  CheckToDestroyMoon12();
  CheckToDestroyMoon13();
  
  DumpCheck1(); //Dump Checks. Makes sure moons can't move left once offscreen.
  DumpCheck2();
  DumpCheck3();
  DumpCheck4();
  DumpCheck5();
  DumpCheck6();
  DumpCheck7();
  DumpCheck8();
  DumpCheck9();
  DumpCheck10();
  DumpCheck11();
  DumpCheck12();
  DumpCheck13();
  
  
  PelletActivator();
  background(0); //Black
  fill(255,255,255); //Yellowish
  strokeWeight(0);
  starField1(); //Fast decorative stars
  sx--; //Not functioning and not needed.
  
  //Parallax Field Stars
  
  fill(100, 100, 0);
  strokeWeight(0);
  circle(sx4-12, stars4[0], 8); //Star4
  stars4[1] = stars4[1]-0.5; //Individualisation of original product
  circle(sx4, stars4[2], 8); 
  sx4 = sx4-0.5; // Do not change
  circle(sx4 +60, stars4[5], 8);
  stars4[4] = stars4[4]-0.5;
  circle(sx4 -47, stars4[7], 8);
  stars4[6] = stars4[6] -0.5;
  circle(sx4 +63, stars4[9], 8);
  stars4[8] = stars4[8] -0.5;
  circle(sx4 +60, stars4[11], 8);
  stars4[10] = stars4[10] -0.5;
  fill(230, 265, 0);
  strokeWeight(0);
  circle(sx3-12, stars3[0], 5); //Star3
  stars3[1] = stars3[1]-0.1; //Individualisation of original product
  circle(sx3, stars3[2], 5); 
  sx3 = sx3-0.1; // Do not change
  circle(sx3 +60, stars3[5], 5);
  stars3[4] = stars3[4]-0.1;
  circle(sx3 -47, stars3[7], 5);
  stars3[6] = stars3[6] -0.1;
  circle(sx3 +63, stars3[9], 5);
  stars3[8] = stars3[8] -0.1;
  circle(sx3 +60, stars3[11], 5);
  stars3[10] = stars3[10] -0.1;
  fill(150, 150, 0);
  strokeWeight(0);
  circle(sx5-12, stars5[0], 6); //Star4
  stars5[1] = stars5[1]-0.3; //Individualisation of original product
  circle(sx5, stars5[2], 6); 
  sx5 = sx5-0.3; // Do not change
  circle(sx5 +34, stars5[5], 6);
  stars5[4] = stars5[4]-0.3;
  circle(sx5 -78, stars5[7], 6);
  stars5[6] = stars5[6] -0.3;
  circle(sx5 -56, stars5[9], 6);
  stars5[8] = stars5[8] -0.3;
  circle(sx5 -70, stars5[11], 6);
  stars5[10] = stars5[10] -0.3;
  fill(255,255,150);
  strokeWeight(0);
  circle(sx2-40, stars2[0], 15); //Star2
  stars2[4] = stars2[4]-0.2; //Individualisation of original product
  circle(sx2, stars2[1], 15); //Star2
  sx2 = sx2-0.2; // Do not change
  circle(sx2 +40, stars2[2], 15);
  stars2[5] = stars2[5]-0.2;
  circle(sx2 +10, stars2[3], 15);
  stars2[6] = stars2[6] -0.2;
  circle(sx2 +60, stars2[9], 15);
  stars2[7] = stars2[7] -0.2;
  circle(sx2 +60, stars2[10], 15);
  stars2[8] = stars2[8] -0.2;
  
  
  //Moons -- Level 1
  
  fill(255);
  strokeWeight(20); //Moon1
  stroke(100);
  circle(xa, ya, 200); //Moon drawn at constrained random position
  if(DumpBool ==0){
  xa--; //Goes towards player
  }
  else{ 
    xa++;
  }
  
  strokeWeight(20); //Moon2
  stroke(100);
  circle(xa2, ya2, 200); //Moon drawn at constrained random position
  if(DumpBool2 ==0){
  xa2--; //Goes towards player
  }
  else{ xa2++;
  }
  
  
  strokeWeight(20); //Moon3
  stroke(100);
  circle(xa3, ya3, 200); //Moon drawn at constrained random position
  if(DumpBool3 ==0){
  xa3--; //Goes towards player
  }
  else{ xa3++;
  }
  
  //Moons -- Level 2
  
  fill(255,0,255);
  strokeWeight(20); //Moon4
  stroke(100);
  circle(xa4, ya4, 200); //Moon drawn at constrained random position
  if(DumpBool4 ==0){
  xa4--; //Goes towards player
  }
  else{ xa4++;
  }
  
  fill(255,0,255);
  strokeWeight(20); //Moon5
  stroke(100);
  circle(xa5, ya5, 200); //Moon drawn at constrained random position
  if(DumpBool5 ==0){
  xa5--; //Goes towards player
  }
  else{ xa5++;
  }
  
  fill(255,0,255);
  strokeWeight(20); //Moon6
  stroke(100);
  circle(xa6, ya6, 200); //Moon drawn at constrained random position
  if(DumpBool6 ==0){
  xa6--; //Goes towards player
  }
  else{ xa6++;
  }
  
  fill(255,0,255);
  strokeWeight(20); //Moon7
  stroke(100);
  circle(xa7, ya7, 200); //Moon drawn at constrained random position
  if(DumpBool7 ==0){
  xa7--; //Goes towards player
  }
  else{ xa7++;
  }
  
  fill(0,0,255);
  strokeWeight(20); //Moon8 -- Level 3
  stroke(100);
  circle(xa8, ya8, 200); //Moon drawn at constrained random position
  if(DumpBool8 ==0){
  xa8--; //Goes towards player
  }
  else{ xa8++;
  }
  
    fill(0,0,255);
  strokeWeight(20); //Moon9 -- Level 3
  stroke(100);
  circle(xa9, ya9, 200); //Moon drawn at constrained random position
  if(DumpBool9 ==0){
  xa9--; //Goes towards player
  }
  else{ xa9++;
  }
  
    fill(0,0,255);
  strokeWeight(20); //Moon10 -- Level 3
  stroke(100);
  circle(xa10, ya10, 200); //Moon drawn at constrained random position
  if(DumpBool10 ==0){
  xa10--; //Goes towards player
  }
  else{ xa10++;
  }
  
    fill(0,0,255);
  strokeWeight(20); //Moon11 -- Level 3
  stroke(100);
  circle(xa11, ya11, 200); //Moon drawn at constrained random position
  if(DumpBool11 ==0){
  xa11--; //Goes towards player
  }
  else{ xa11++;
  }
  
    fill(0,0,255);
  strokeWeight(20); //Moon12 -- Level 3
  stroke(100);
  circle(xa12, ya12, 200); //Moon drawn at constrained random position
  if(DumpBool12 ==0){
  xa12--; //Goes towards player
  }
  else{ xa12++;
  }
  
    fill(0,0,255);
  strokeWeight(20); //Moon13 -- Level 3
  stroke(100);
  circle(xa13, ya13, 200); //Moon drawn at constrained random position
  if(DumpBool13 ==0){
  xa13--; //Goes towards player
  }
  else{ xa13++;
  }
  
  
  
  
  //Player and Pellet
  
  fill(0,255,255); //Ship
  strokeWeight(5);//Different stroke weight for ship
  stroke(220); // Different stroke colour for ship
  if(PlayerBool ==0){
  drawPlayer(x, y); //Starts at 40y  
  }
  else if(PlayerBool == 1){
    PlayerDown(x,y);
  }
  else if(PlayerBool == 2){
    PlayerUp(x,y);
  }
    
  fill(255,0,0);
  
  circle(xs, ys, 20); // Pellet at initial position -30y (hidden) allows for call function
  xs++; // Goes away from player
  
  
  CheckForFailConditionHitPlayer(); //Player is hit. Fail screen shows.
  CheckForFailConditionMoonGone(); //Moon reaches 0, fail screen shows.
  victoryCheck();
}

float GetValue(float a){ //Get the value of the float under conditions of when it is called.
  return a; // Returns the number. Easier to use in code where a specific number must be called at particular moment.
}

void keyPressed(){ //Function call to work in draw
  if (keyPressed){ //Conditional for keyPressed object
    if (key == 's' || key == 'S'){ //Down
      y = constrain(y + 15, 40, 440); // Constrains to 40 min and 440 max
      PlayerBool = 1;
    }
    else if(key== 'w' || key == 'W'){ //Up
      y = constrain(y - 15, 40, 440);
      PlayerBool = 2;
      }
    else if(key == ' ' && bool == true){  // For creation of bullet, have a mousepressed function for setting position of the bullet. The bullet should have its own x and y variables.
      callPelletToPlayerPos(xp+30, yp);
    }
    else if (key == ' ' && bool == false){ //When it is false and can no longer fire.
      xs++; //Speeds up bullet
      println("Bool is false! Can't shoot!"); // Testing purposes
    }
      }
      }
      
void keyReleased(){
  if ((key == ' ') && (bool == true)){
  PelletActiveNullifier(); // Makes bool false under conditions.
  }
  if(key == 's'){
    PlayerBool = 0;
  }
  if(key == 'w'){
    PlayerBool = 0;
  }
}


void drawMoon(float x, float y){ //Moon creation and randomisation beginning Level 1
  fill(255);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 100, 550);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa = x;
  ya = y;
}

  void drawMoon2(float x, float y){ //Moon creation and randomisation beginning
  fill(255);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 100, 550);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa2 = x;
  ya2 = y;
}

  void drawMoon3(float x, float y){ //Moon creation and randomisation beginning
  fill(255);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 100, 550);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa3 = x;
  ya3 = y;
}

  void drawMoon4(float x, float y){ //Level 2
  fill(255,0,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1000, 1500);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa4 = x;
  ya4 = y;
}

  void drawMoon5(float x, float y){ //Moon creation and randomisation beginning
  fill(255,0,255);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1000, 1550);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa5 = x;
  ya5 = y;
}

  void drawMoon6(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1000, 1550);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa6 = x;
  ya6 = y;
}

  void drawMoon7(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1000, 1550);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa7 = x;
  ya7 = y;
}

  void drawMoon8(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1550, 2050);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa8 = x;
  ya8 = y;
}

  void drawMoon9(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1550, 2050);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa9 = x;
  ya9 = y;
}

  void drawMoon10(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1550, 2050);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa10 = x;
  ya10 = y;
}

  void drawMoon11(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1550, 2050);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa11 = x;
  ya11 = y;
}

  void drawMoon12(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1550, 2050);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa12 = x;
  ya12 = y;
}

  void drawMoon13(float x, float y){ //Moon creation and randomisation beginning
  fill(255,255,0);
  stroke(100);
  strokeWeight(20);
  x = constrain(x, 1550, 2050);
  y = constrain(y, 200, 550);
  circle(x, y, 200);
  xa13 = x;
  ya13 = y;
}

void drawPlayer(float x, float y){ //Player creation and set beginning at 40y
  strokeWeight(1);
  stroke(0);
  triangle(xp,yp+10,xp,yp-10,xp+20,yp);
  xp = x;
  yp = y;
}

void PlayerUp(float x, float y){
  strokeWeight(1);
  stroke(0);
  triangle(xp,yp+10,xp-2,yp-8,xp+20,yp-2);
  xp = x;
  yp = y;
}

void PlayerDown(float x, float y){
  strokeWeight(1);
  stroke(0);
  triangle(xp-2,yp+8,xp+2,yp-10,xp+20,yp+2);
  xp = x;
  yp = y;
}

void callPelletToPlayerPos(float x, float y){// Pellets are called to player pos upon spacebar press
  fill(255,0,0);
  x = constrain(x, xp, 500);
  y = constrain(y, yp, yp);
  circle(x,y,20);
  xs = x;
  ys = y;
}

void CheckForPelletPos(){ //Runs continuously and checks for PelletPos to ensure it is at 600.
  GetValue(xs);
  if (xs >= 500){
    ys = -30; // Once it reaches other side, goes to -30y off screen.
  }
}

void CheckToDestroyMoon(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa); // Obtains current moonX value.
  float MoonY = GetValue(ya); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered.
    ya = -300;
  }
}

void DumpCheck1(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya <= -250 && DumpBool == 0){
    DumpBool = 1;
    xa++;
  }
}

void CheckToDestroyMoon2(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa2); // Obtains current moonX value.
  float MoonY = GetValue(ya2); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa2 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered.
    ya2 = -300;
  }
}

void DumpCheck2(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya2 <= -250 && DumpBool2 == 0){
    DumpBool2 = 1;
    xa2++;
  }
}

void CheckToDestroyMoon3(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa3); // Obtains current moonX value.
  float MoonY = GetValue(ya3); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa3 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya3 = -300;
  }
}

void DumpCheck3(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya3 <= -250 && DumpBool3 == 0){
    DumpBool3 = 1;
    xa3++;
  }
}
  
void CheckToDestroyMoon4(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa4); // Obtains current moonX value.
  float MoonY = GetValue(ya4); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa4 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya4 = -300;
  }
}

void DumpCheck4(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya4 <= -250 && DumpBool4 == 0){
    DumpBool4 = 1;
    xa4++;
    println(DumpBool4);
  }
}

void CheckToDestroyMoon5(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa5); // Obtains current moonX value.
  float MoonY = GetValue(ya5); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa5 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya5 = -300;
  }
}

void DumpCheck5(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya5 <= -250 && DumpBool5 == 0){
    DumpBool5 = 1;
    xa5++;
  }
}


void CheckToDestroyMoon6(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa6); // Obtains current moonX value.
  float MoonY = GetValue(ya6); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa6 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya6 = -300;
  }
}

void DumpCheck6(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya6 <= -250 && DumpBool6 == 0){
    DumpBool6 = 1;
    xa6++;
  }
}

void CheckToDestroyMoon7(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa7); // Obtains current moonX value.
  float MoonY = GetValue(ya7); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa7 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya7 = -300;
  }
}

void DumpCheck7(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya7 <= -250 && DumpBool7 == 0){
    DumpBool7 = 1;
    xa7++;
  }
}


void CheckToDestroyMoon8(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa8); // Obtains current moonX value.
  float MoonY = GetValue(ya8); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa8 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya8 = -300;
  }
}

void DumpCheck8(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya8 <= -250 && DumpBool8 == 0){
    DumpBool8 = 1;
    xa8++;
  }
}

void CheckToDestroyMoon9(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa9); // Obtains current moonX value.
  float MoonY = GetValue(ya9); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa9 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya9 = -300;
  }
}

void DumpCheck9(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya9 <= -250 && DumpBool9 == 0){
    DumpBool9 = 1;
    xa9++;
  }
}

void CheckToDestroyMoon10(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa10); // Obtains current moonX value.
  float MoonY = GetValue(ya10); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa10 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya10 = -300;
  }
}

void DumpCheck10(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya10 <= -250 && DumpBool10 == 0){
    DumpBool10 = 1;
    xa10++;
  }
}

void CheckToDestroyMoon11(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa11); // Obtains current moonX value.
  float MoonY = GetValue(ya11); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa11 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya11 = -300;
  }
}
void DumpCheck11(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya11 <= -250 && DumpBool11 == 0){
    DumpBool11 = 1;
    xa11++;
  }
}

void CheckToDestroyMoon12(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa12); // Obtains current moonX value.
  float MoonY = GetValue(ya12); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa12 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya12 = -300;
  }
}

void DumpCheck12(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya12 <= -250 && DumpBool12 == 0){
    DumpBool12 = 1;
    xa12++;
  }
}

void CheckToDestroyMoon13(){ // Collision Detection. Runs continuously.
  float PelletX = GetValue(xs); //Obtains current pelletX value.
  float PelletY = GetValue(ys); //Obtains current pelletY value.
  float MoonX = GetValue(xa13); // Obtains current moonX value.
  float MoonY = GetValue(ya13); //Obtains current moonY value
  if (dist(PelletX, PelletY, MoonX, MoonY) <= 100){ // Calculates distance between moon and pellet.
    xs = 0;// Pellet offscreen again.
    ys = -30; 
    xa13 = 800; //Moon offscreen. NOTE: All xa values are plus so fail message is not triggered,
    ya13 = -300;
  }
}

void DumpCheck13(){ //Ensures that a moon does not go to the left anymore after it is hit by pellet.
  if (ya13 <= -250 && DumpBool13 == 0){
    DumpBool13 = 1;
    xa13++;
  }
}
    

void PelletActiveNullifier(){ // Shorthand for whether pellet can be called. False = no, true = yes
  float PelletActiveX = GetValue(xs);
  float PelletActiveY = GetValue(ys);
  if (bool == true && PelletActiveX < 600 && PelletActiveY > -20){
    bool = false; //Becomes false when called to playing field.
    println(bool); // Testing purposes
  }
}

void PelletActivator(){ // Checks for conditions to make pellet shooting ability active again.
  float PelletActiveX = GetValue(xs); // Did not need to be used in end product
  float PelletActiveY = GetValue(ys);
  if (bool == false && PelletActiveY < -20){ // 
    bool = true; //Becomes false when called to playing field.
    println("Ready!"); // Testing purposes
  }
}

void CheckForFailConditionHitPlayer(){ // Disappears all and displays fail message if player is hit.
  if (dist(xp,yp,xa,ya) <= 100){
    println("Fail message1"); //Testing purposes
    xp = -300; //Redundant code, ignore.
    yp = -300;
    xa = 800; //This all works from here on. 
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
  if (dist(xp,yp,xa2,ya2) <= 100){
    println("Fail message2");
    xp = -300; //Redundant code, ignore.
    yp = -300;
    xa = 800; //This all works from here on.
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
  if (dist(xp,yp,xa3,ya3) <= 100){
    println("Fail message3");
    xp = -300; //Redundant code, ignore.
    yp = -300;
    xa = 800; //This all works from here on.
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
    if (dist(xp,yp,xa4,ya4) <= 100||dist(xp,yp,xa5,ya5) <= 100||dist(xp,yp,xa6,ya6) <= 100||dist(xp,yp,xa7,ya7) <= 100||dist(xp,yp,xa8,ya8)<= 100||dist(xp,yp,xa9,ya9) <= 100||dist(xp,yp,xa10,ya10) <= 100||dist(xp,yp,xa11,ya11) <= 100||dist(xp,yp,xa12,ya12) <= 100||dist(xp,yp,xa13,ya13) <= 100){
    println("Fail message Player");
    xp = -300; //Redundant code, ignore.
    yp = -300;
    xa = 800; //This all works from here on.
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
  if (Count == 1){ //Will bring up fail message if the count is 1.
    TextStore(width/2, height/2);
    xp = -500; //Moves player offscreen if count is 1, ensuring they stay off permanently. Works for other conditions as well.
    yp = -500;
  }
}

void CheckForFailConditionMoonGone(){ //Will call when Moon is at left side of screen.
    if (xa <= 0){ //Works
    println("Fail messageMG"); //Testing purposes
    xp = -300; 
    yp = -300;
    xa = 800; //This all works
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
    if (xa2 <= 0){
    println("Fail messageMG");
    xp = -300; 
    yp = -300;
    xa = 800; //This all works
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
    if (xa3 <= 0){
    println("Fail messageMG");
    xp = -300; 
    yp = -300;
    xa = 800; //This all works
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
    if (xa4 <= 0 ||xa5<=0||xa6<=0||xa7 <= 0 ||xa8<=0||xa9<=0||xa10 <= 0 ||xa11<=0||xa12<=0||xa13<=0){
    println("Fail messageMG");
    xp = -300; 
    yp = -300;
    xa = 800; //This all works
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
    Count = 1;
    }
    
}

 void victoryCheck(){
   if (DumpBool ==1 && DumpBool2 ==1 && DumpBool3 ==1 && DumpBool4 ==1 && DumpBool5 ==1 && DumpBool6 ==1 && DumpBool7 ==1 && DumpBool8 ==1 && DumpBool9 ==1 && DumpBool10 ==1 && DumpBool11 ==1 && DumpBool12 ==1 && DumpBool13 ==1 &&Count==0){
     println("Win message");
     TextStore2(width/2,height/2);
    xp = -300; 
    yp = -300;
    xa = 800; //This all works
    ya = -800;
    xa2 = 800;
    ya2 = -800;
    xa3 = 800;
    ya3 = -800;
    xa4 = 800;
    ya4 = -800;
    xa5 = 800;
    ya5 = -800;
    xa6 = 800;
    ya6 = -800;
    xa7 = 800;
    ya7 = -800;
    xa8 = 800;
    ya8 = -800;
    xa9 = 800;
    ya9 = -800;
    xa10 = 800;
    ya10 = -800;
    xa11 = 800;
    ya11 = -800;
    xa12 = 800;
    ya12 = -800;
    xa13 = 800;
    ya13 = -800;
   }
 }

 void TextStore2(float a, float b){ //Text objects NOTE: Should be used for failsafe if moons hit side of screen once taken off
  textSize(50);
  textAlign(CENTER);
  fill(255,255,0);
  text("YOU WIN", a, b); //It works
}


 void TextStore(float a, float b){ //Text objects
  textSize(50);
  textAlign(CENTER);
  fill(255,0,0);
  text("FAIL LOL", a, b); //It works
}

void FailSquare(float x, float y){ //Not used in final product
  fill(255,0,0);
  square(lx,ly,750);
  lx = x;
  ly = y;
}

void star(float a, float b){
  fill(255,255,0); // yellow
  circle(a, b, 4);
  sx = a;
  sy = b;
}

void star2(float c, float v){ //Need to sort out array randomisation
  fill(255,255,255);
  stroke(100);
  circle(c, v, 200); //Size doesn't matter here
  sx2 = c;
  sy2 = v;
}

void star3(float c, float v){ //Need to sort out array randomisation
  fill(255);
  stroke(100);
  circle(c, v, 200); //Size doesn't matter here
  sx3 = c;
  sy3 = v;
}

void star4(float c, float v){ //Need to sort out array randomisation
  fill(255);
  stroke(100);
  circle(c, v, 200); //Size doesn't matter here
  sx4 = c;
  sy4 = v;
}

void star5(float c, float v){ //Need to sort out array randomisation
  fill(255);
  stroke(100);
  circle(c, v, 200); //Size doesn't matter here
  sx5 = c;
  sy5 = v;
}

void CheckStarReturntoPosition(){
  if(sx2 <= -400){
    sx2 = sx2 + 1000;
  }
  if(stars2[4] <= 100){
    stars2[4] = stars2[4] +1000;
  }
  if(sx3 <= -400){
    sx3 = sx3 + 1000;
  }
  if(sx4 <= -400){
    sx4 = sx4 + 1200;
  }
  if(sx5 <= -400){
    sx5 = sx5 + 1200;
  }
}
  

void starField1(){ //Parallax field 1 Fast moving decorative effect
  for(int k = 1; k <= stars.length; k++){ //i increases from 1 to stars until it hits the length of the array
    star(random(0,500), random(0,500));
  }
}


    
    
      
    
