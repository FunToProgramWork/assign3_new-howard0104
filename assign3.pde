final int GAME_START = 0, GAME_RUN = 1, GAME_OVER = 2;
int gameState = 0;

final int GRASS_HEIGHT = 15;
final int START_BUTTON_W = 144;
final int START_BUTTON_H = 60;
final int START_BUTTON_X = 248;
final int START_BUTTON_Y = 360;

PImage title, gameover, startNormal, startHovered, restartNormal, restartHovered,life,stone1,stone2;
PImage bg, soil8x24;
PImage soil0,soil1,soil2,soil3,soil4,soil5;

// For debug function; DO NOT edit or remove this!
int playerHealth = 0;
float cameraOffsetY = 0;
boolean debugMode = false;
int x;
int y;
int x1,y1,x2,y2,x3,y3,x4,y4;
int x5,y5;
void setup() {
	size(640, 480, P2D);
	// Enter your setup code here (please put loadImage() here or your game will lag like crazy)
	bg = loadImage("img/bg.jpg");
	title = loadImage("img/title.jpg");
	gameover = loadImage("img/gameover.jpg");
	startNormal = loadImage("img/startNormal.png");
	startHovered = loadImage("img/startHovered.png");
	restartNormal = loadImage("img/restartNormal.png");
	restartHovered = loadImage("img/restartHovered.png");
	soil8x24 = loadImage("img/soil8x24.png");
  soil0=loadImage("img/soil0.png");
  soil1=loadImage("img/soil1.png");
  soil2=loadImage("img/soil2.png");
  soil3=loadImage("img/soil3.png");
  soil4=loadImage("img/soil4.png");
  soil5=loadImage("img/soil5.png");
  life=loadImage("img/life.png");
  stone1=loadImage("img/stone1.png");
  stone2=loadImage("img/stone2.png");
}

void draw() {
  

    /* ------ Debug Function ------ 

      Please DO NOT edit the code here.
      It's for reviewing other requirements when you fail to complete the camera moving requirement.

    */
    if (debugMode) {
      pushMatrix();
      translate(0, cameraOffsetY);
    }
    /* ------ End of Debug Function ------ */

    
	switch (gameState) {

		case GAME_START: // Start Screen
		image(title, 0, 0);

		if(START_BUTTON_X + START_BUTTON_W > mouseX
	    && START_BUTTON_X < mouseX
	    && START_BUTTON_Y + START_BUTTON_H > mouseY
	    && START_BUTTON_Y < mouseY) {

			image(startHovered, START_BUTTON_X, START_BUTTON_Y);
			if(mousePressed){
				gameState = GAME_RUN;
				mousePressed = false;
			}

		}else{

			image(startNormal, START_BUTTON_X, START_BUTTON_Y);

		}
		break;

		case GAME_RUN: // In-Game

		// Background
		image(bg, 0, 0);

		// Sun
	    stroke(255,255,0);
	    strokeWeight(5);
	    fill(253,184,19);
	    ellipse(590,50,120,120);

		// Grass
     image(life,10,10);
     image(life,80,10);
     image(life,150,10);
     image(life,220,10);
     image(life,290,10);
		fill(124, 204, 25);
		noStroke();
		rect(0, 160 - GRASS_HEIGHT, width, GRASS_HEIGHT);

		// Soil - REPLACE THIS PART WITH YOUR LOOP CODE!
		image(soil8x24, 0, 160);

    for(int x=0;x<640;x+=80){
      for(int y=480;y<800;y+=80){
       
        image(soil1,x,y);
      }
    }
    for(int x1=0;x1<640;x1+=80){
      for(int y1=800;y1<1120;y1+=80){
       
        image(soil2,x1,y1);
      }
    }
    for(int x2=0;x2<640;x2+=80){
      for(int y2=1120;y2<1440;y2+=80){
       
        image(soil3,x2,y2);
      }
    }
      for(int x3=0;x3<640;x3+=80){
      for(int y3=1440;y3<1760;y3+=80){
       
        image(soil4,x3,y3);
      }
    }
     for(int x4=0;x4<640;x4+=80){
      for(int y4=1760;y4<2080;y4+=80){
       
        image(soil5,x4,y4);
      }
    }
    
    image(stone1,0,160);
    image(stone1,80,240);
    image(stone1,160,320);
    image(stone1,240,400);
    image(stone1,320,480);
    image(stone1,400,560);
    image(stone1,480,640);
    image(stone1,560,720);
    
    image(stone1,80,800);
    image(stone1,160,800);
    image(stone1,400,800);
    image(stone1,480,800);
    image(stone1,0,880);
    image(stone1,240,880);
    image(stone1,320,880);
    image(stone1,560,880);
    image(stone1,0,960);
    image(stone1,240,960);
    image(stone1,320,960);
    image(stone1,560,960);
    image(stone1,80,1040);
    image(stone1,160,1040);
    image(stone1,400,1040);
    image(stone1,480,1040);
    image(stone1,80,1120);
    image(stone1,160,1120);
    image(stone1,400,1120);
    image(stone1,480,1120);
    image(stone1,0,1200);
    image(stone1,240,1200);
    image(stone1,320,1200);
    image(stone1,560,1200);
    image(stone1,0,1280);
    image(stone1,240,1280);
    image(stone1,320,1280);
    image(stone1,560,1280);
     image(stone1,80,1360);
    image(stone1,160,1360);
    image(stone1,400,1360);
    image(stone1,480,1360);
    
    //80 160 320 400 560
    image(stone1,80,1440);
    image(stone1,160,1440);
    image(stone2,160,1440);
    image(stone1,320,1440);
    image(stone1,400,1440);
    image(stone2,400,1440);
    image(stone1,560,1440);
    
    image(stone1,80,1680);
    image(stone1,160,1680);
    image(stone2,160,1680);
    image(stone1,320,1680);
    image(stone1,400,1680);
    image(stone2,400,1680);
    image(stone1,560,1680);
    
    image(stone1,80,1920);
    image(stone1,160,1920);
    image(stone2,160,1920);
    image(stone1,320,1920);
    image(stone1,400,1920);
    image(stone2,400,1920);
    image(stone1,560,1920);
    
    //0 80 240 320 480 560
    image(stone1,0,1520);
    image(stone1,80,1520);
    image(stone2,80,1520);
    image(stone1,240,1520);
    image(stone1,320,1520);
    image(stone2,320,1520);
    image(stone1,480,1520);
    image(stone1,560,1520);
    image(stone2,560,1520);
    
    image(stone1,0,1760);
    image(stone1,80,1760);
    image(stone2,80,1760);
    image(stone1,240,1760);
    image(stone1,320,1760);
    image(stone2,320,1760);
    image(stone1,480,1760);
    image(stone1,560,1760);
    image(stone2,560,1760);
    
    image(stone1,0,2000);
    image(stone1,80,2000);
    image(stone2,80,2000);
    image(stone1,240,2000);
    image(stone1,320,2000);
    image(stone2,320,2000);
    image(stone1,480,2000);
    image(stone1,560,2000);
    image(stone2,560,2000);
    
    //0 160 240 400 480
    image(stone1,0,1600);
    image(stone2,0,1600);
    image(stone1,160,1600);
    image(stone1,240,1600);
    image(stone2,240,1600);
    image(stone1,400,1600);
    image(stone1,480,1600);
    image(stone2,480,1600);
    
    image(stone1,0,1840);
    image(stone2,0,1840);
    image(stone1,160,1840);
    image(stone1,240,1840);
    image(stone2,240,1840);
    image(stone1,400,1840);
    image(stone1,480,1840);
    image(stone2,480,1840);
		// Player


		// Health UI

		break;

		case GAME_OVER: // Gameover Screen
		image(gameover, 0, 0);
		
		if(START_BUTTON_X + START_BUTTON_W > mouseX
	    && START_BUTTON_X < mouseX
	    && START_BUTTON_Y + START_BUTTON_H > mouseY
	    && START_BUTTON_Y < mouseY) {

			image(restartHovered, START_BUTTON_X, START_BUTTON_Y);
			if(mousePressed){
				gameState = GAME_RUN;
				mousePressed = false;
				// Remember to initialize the game here!
			}
		}else{

			image(restartNormal, START_BUTTON_X, START_BUTTON_Y);

		}
		break;
		
	}

    // DO NOT REMOVE OR EDIT THE FOLLOWING 3 LINES
    if (debugMode) {
        popMatrix();
    }
}

void keyPressed(){
	// Add your moving input code here

	// DO NOT REMOVE OR EDIT THE FOLLOWING SWITCH/CASES
    switch(key){
      case 'w':
      debugMode = true;
      if(cameraOffsetY<0){
      cameraOffsetY += 25;}
      break;

      case 's':
      debugMode = true;
      
      cameraOffsetY -= 25;
      break;

      case 'a':
      if(playerHealth > 0) playerHealth --;
      break;

      case 'd':
      if(playerHealth < 5) playerHealth ++;
      break;
    }
}

void keyReleased(){
}
