class Mouse
{
   float radius;
   boolean selected;
   
   Mouse()
   {
      radius = 75;
      this.selected = false;
   }
   
   void update()
   { 
      if (mousePressed && selected && !gui.justPressed)
      {
         noFill();
         stroke(255);
         strokeWeight(3);
         ellipse(mouseX, mouseY, radius*2, radius*2);
      }
   }
   
   boolean inMouse(Particle p)
   {
      return p.pos.dist(new PVector(mouseX, mouseY)) <= radius && mousePressed && selected;
   }
   
   PVector setPos()
   {
      return new PVector(mouseX - pmouseX, mouseY - pmouseY);
   }
}
