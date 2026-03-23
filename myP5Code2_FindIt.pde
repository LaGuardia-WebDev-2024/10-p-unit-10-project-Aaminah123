var starXPos = [];
var starYPos = [];
var star = "⭐️";
var starTotal = 100;

var planetXPos = [];
var planetYPos = [];
var planet = "🪐";
var planetTotal = 3;
var planetFound = 0;

//kirbys
var ogkirb = loadImage("ogkirb.png"); 
var greenkirb = loadImage("green.png");
var redkirb = loadImage("red.png");
var purpkirb = loadImage("urple.png");
var palekirb = loadImage("pale.png");

//original
var ogkirbXPos = [];
var ogkirbYPos = [];
var ogkirbTotal = 5;
var ogkirbFound = 0;

//green
var greenkirbXPos = [];
var greenkirbYPos = [];
var greenkirbTotal = 25;

//red
var redkirbXPos = [];
var redkirbYPos = [];
var redkirbTotal = 25;

//purple
var purpkirbXPos = [];
var purpkirbYPos = [];
var purpkirbTotal = 25;

//pale
var palekirbXPos = [];
var palekirbYPos = [];
var palekirbTotal = 25;



setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < greenkirbXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, greenkirbXPos[i], greenkirbYPos[i])<15){
      greenkirbXPos.splice(i, 1);
      greenkirbYPos.splice(i, 1);
      greenkirbFound++;
    }
  }

  for(var i = 0; i < palekirbXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, palekirbXPos[i], palekirbYPos[i])<15){
      palekirbXPos.splice(i, 1);
      palekirbYPos.splice(i, 1);
      palekirbFound++;
    }
  }

  for(var i = 0; i < redkirbXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, redkirbXPos[i], redkirbYPos[i])<15){
      redkirbXPos.splice(i, 1);
      redkirbYPos.splice(i, 1);
      redkirbFound++;
    }
  }

  for(var i = 0; i < purpkirbXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, purpkirbXPos[i], purpkirbYPos[i])<15){
      purpkirbXPos.splice(i, 1);
      purpkirbYPos.splice(i, 1);
      purpkirbFound++;
    }
  }
}

var display = function(){
  background(39, 46, 143);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < ogkirbXPos.length; i ++){
    image(ogkirb, ogkirbXPos[i], ogkirbYPos[i]);
  }

  for(var i = 0; i < greenkirbXPos.length; i ++){
    image(greenkirb, greenkirbXPos[i], greenkirbYPos[i]);
  }

  for(var i = 0; i < palekirbXPos.length; i ++){
    image(palekirb, palekirbXPos[i], palekirbYPos[i]);
  }

  for(var i = 0; i < redkirbXPos.length; i ++){
    image(redkirb, redkirbXPos[i], redkirbYPos[i]);
  }

  for(var i = 0; i < purpkirbXPos.length; i ++){
    image(purpkirb, purpkirbXPos[i], purpkirbYPos[i]);
  }


  /*for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }*/

  fill(250, 234, 65);
  rect(-5,400,605,50);
  fill(0,0,0);
  text("Find The " + planet + "s   |   " + planet + " " + planetFound + "/" + planetTotal, 10, 425);

  if(planetFound == planetTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
   
  ogkirbXPos = [];
  ogkirbYPos = [];
  greenkirbXPos = [];
  greenkirbYPos = [];
  greenkirbFound = 0;

  ogkirbXPos = [];
  ogkirbYPos = [];
  palekirbXPos = [];
  palekirbYPos = [];
  palekirbFound = 0;

  ogkirbXPos = [];
  ogkirbYPos = [];
  redkirbXPos = [];
  redkirbYPos = [];
  redkirbFound = 0;

  ogkirbXPos = [];
  ogkirbYPos = [];
  purpkirbXPos = [];
  purpkirbYPos = [];
  purpkirbFound = 0;



   for(var i = 0; i < ogkirbTotal; i++){
    ogkirbXPos.push(random(0,600));
    ogkirbYPos.push(random(0,400));
  }

  for(var i = 0; i < greenkirbTotal; i++){
    greenkirbXPos.push(random(0,600));
    greenkirbYPos.push(random(0,400));
  }

  for(var i = 0; i < palekirbTotal; i++){
    palekirbXPos.push(random(0,600));
    palekirbYPos.push(random(0,400));
  }

  for(var i = 0; i < redkirbTotal; i++){
    redkirbXPos.push(random(0,600));
    redkirbYPos.push(random(0,400));
  }

  for(var i = 0; i < purpkirbTotal; i++){
    purpkirbXPos.push(random(0,600));
    purpkirbYPos.push(random(0,400));
  }

  /*starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }*/
}