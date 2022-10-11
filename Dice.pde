Die bob;
Die sue;
Die jeff;
Die carol;
Die mary;
Die john;
Die tree;
Die plant;
Die rock;
int g = 0;

void setup() {
  size(300, 300);
  textAlign(CENTER, CENTER);
  noLoop();
  bob= new Die (0, 0);
  sue= new Die (100, 0);
  jeff= new Die (200, 0);
  carol= new Die (0, 100);
  mary= new Die (100, 100);
  john= new Die (200, 100);
  tree= new Die (0, 200);
  plant= new Die (100, 200);
  rock= new Die (200, 200);
  
}
void draw() {
  //System.out.println(bob.myX);
  bob.show();
  bob.roll();
  sue.show();
  sue.roll();
  jeff.show();
  jeff.roll();
  jeff.show();
  carol.roll();
  carol.show();
  john.roll();
  john.show();
  mary.show();
  mary.roll();
  tree.show();
  tree.roll();
  plant.show();
  plant.roll();
  rock.show();
  rock.roll();
   text("total = " +g, 100, 275);
   g = 0;
}

void mousePressed()
{
  redraw();
}      
class Die {
  //class variable
  int myX, myY;
  int n;
  Die (int x, int y) {
    {
      roll();
      myX = x;
      myY = y;
    }
  }




  void show() {
    fill(255, 255, 255);
    rect(myX, myY, 100, 100);
    fill(0, 0, 0);
    text(n, myX+50, myY+50);
    //for(int i= 1; i <= n; i++)
    //{
    //  for(int j = 1; j <= n; j++)
    //  {
    //  return;
    //}
    //}
    g=g+n;

    redraw();
    
   
  }
  void roll() {
    if (Math.random()<.16) {
      n= 1;
    } else if (Math.random()<.33) {
      n = 2;
    } else if (Math.random()<.5) {
      n = 3;
    } else if (Math.random()<.66) {
      n = 4;
    } else if (Math.random()<.83) {
      n= 5;
    } else {
      n = 6;
    }
  }
}
