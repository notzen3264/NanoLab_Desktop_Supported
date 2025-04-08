// Global setup variables
int currentParticles = 0;
int initialParticlesNum = 1000;
boolean useInitialParticles = true;
boolean useInstant = true;
boolean useShaders = false;

/* VERY experimental feature, kind of works but heavily impacts performance.
   Not recommended. */
boolean useHandleCollisions = false;
float viscosity = 0.7;
float maxSpeed = 500; //set this lower for more 'cohesive' organisms

boolean isDesktop = true;
int trueScreenWidth;
int trueScreenHeight;
int screenWidth;
int screenHeight;

Manager man;
Mouse mouse;
GUI gui;

void settings() {
  if (isDesktop) {
     trueScreenWidth = displayWidth;
     trueScreenHeight = displayHeight;
     fullScreen();
  } else {
     trueScreenWidth = screenWidth;
     trueScreenHeight = screenHeight;
     size(trueScreenWidth, trueScreenHeight);
  }
}

void setup() {
   man = new Manager();
   gui = new GUI(man);
   mouse = new Mouse();
   man.randomTypes();

   println("Growth, division, death, genesis, evolution, movement, behaviour, metamorphosis has been observed. (not physically based, genetic material is stored within the particle types themselves, not within the organisms, each organism has different numbers of particles, meaning each has different cumulative genetic codes)");
}

void draw() {
   man.update();
   mouse.update();
   gui.update();
}
