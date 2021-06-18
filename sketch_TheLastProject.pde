// The Last Project ! 201510330 Kim Se Yun

Catcher catcher;
Timer timer;
Drop[] drops;
int totalDrops = 0;
int laserLimitstarts = 950;
//int laserLimit = 80;

void setup() { size(400,1000);
  catcher = new Catcher(32);
  drops = new Drop[100];
  timer = new Timer(300);
  timer.start();
}

void draw() {
  background(150);

  line(0, height-laserLimitstarts, width, height-laserLimitstarts); 
  
  
  catcher.setLocation(mouseX, mouseY);
  catcher.display();

  if (timer.isFinished()) {
    drops[totalDrops] = new Drop(); 
    totalDrops++;
    if (totalDrops >= drops.length) {
      totalDrops = 0;
    } timer.start();
  }
  for(int i =0; i < totalDrops; i++){
   drops[i].move();
   drops[i].display();
   if(catcher.intersect(drops[i])){
    drops[i].caught(); 
//    drops[i].gameStop();
    
   }
  }
}
