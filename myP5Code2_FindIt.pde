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
var carkirb = loadImage("https://cdn.mos.cms.futurecdn.net/VWNYrSJUdBNoJbdK9WHgCA.jpg");

var warp = loadImage("warp.png");



//original
var ogkirbXPos = [];
var ogkirbYPos = [];
var ogkirbTotal = 5;
var ogkirbFound = 0;
var ogkirbAmp = 2;

//green
var greenkirbXPos = [];
var greenkirbYPos = [];
var greenkirbTotal = 25;
var greenkirbAmp = 2;

//red
var redkirbXPos = [];
var redkirbYPos = [];
var redkirbTotal = 25;
var redkirbAmp = 1;

//purple
var purpkirbXPos = [];
var purpkirbYPos = [];
var purpkirbTotal = 25;
var purpkirbAmp = 1;

//pale
var palekirbXPos = [];
var palekirbYPos = [];
var palekirbTotal = 25;
var palekirbAmp = 1;

var time = 0;

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
  var k = 0;
  while(k < ogkirbXPos.length){
    if(dist(xClick , yClick , ogkirbXPos[k] + 30, ogkirbYPos[k] + 25)<20){
      ogkirbXPos.splice(k, 1);
      ogkirbYPos.splice(k, 1);
      ogkirbFound++;
    }
    k++;
  }
}

var display = function(){
  background(39, 46, 143);
  cursor(warp);
  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < ogkirbXPos.length; i ++){
    image(ogkirb, ogkirbXPos[i], ogkirbYPos[i], 55, 55);
    ogkirbXPos[i] += ogkirbAmp * Math.sin(time);
  }

  for(var i = 0; i < greenkirbXPos.length; i ++){
    image(greenkirb, greenkirbXPos[i], greenkirbYPos[i], 55, 55);
    greenkirbXPos[i] += greenkirbAmp * Math.sin(time + 1);
  }

  for(var i = 0; i < palekirbXPos.length; i ++){
    image(palekirb, palekirbXPos[i], palekirbYPos[i], 55, 55);
    palekirbXPos[i] += palekirbAmp * Math.sin(time + 2);
  }

  for(var i = 0; i < redkirbXPos.length; i ++){
    image(redkirb, redkirbXPos[i], redkirbYPos[i], 55, 55);
    redkirbXPos[i] += redkirbAmp * Math.sin(time + .5);
  }

  for(var i = 0; i < purpkirbXPos.length; i ++){
    image(purpkirb, purpkirbXPos[i], purpkirbYPos[i], 55, 55);
    purpkirbXPos[i] += purpkirbAmp * Math.sin(time + 3);
  }

  time += .05;

  fill(250, 234, 65);
  rect(-5,400,605,50);
  fill(19, 36, 161);
  text("Find The " + planet + "  | " + planet + " " + ogkirbFound + "/" + ogkirbTotal, 10, 425);
  image(ogkirb,95,403,30,30);
  image(ogkirb,143,403,30,30);
  
  if(ogkirbFound == ogkirbTotal){
    fill(250, 234, 65);
    image(carkirb,0,0,600,400);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
   
  ogkirbXPos = [];
  ogkirbYPos = [];
  ogkirbFound = 0;

  greenkirbXPos = [];
  greenkirbYPos = [];
  greenkirbFound = 0;

  palekirbXPos = [];
  palekirbYPos = [];
  palekirbFound = 0;

  redkirbXPos = [];
  redkirbYPos = [];
  redkirbFound = 0;

  purpkirbXPos = [];
  purpkirbYPos = [];
  purpkirbFound = 0;


   for(var i = 0; i < ogkirbTotal; i++){
    ogkirbXPos.push(random(0,550));
    ogkirbYPos.push(random(0,350));
  }

  for(var i = 0; i < greenkirbTotal; i++){
    greenkirbXPos.push(random(0,550));
    greenkirbYPos.push(random(0,350));
  }

  for(var i = 0; i < palekirbTotal; i++){
    palekirbXPos.push(random(0,550));
    palekirbYPos.push(random(0,350));
  }

  for(var i = 0; i < redkirbTotal; i++){
    redkirbXPos.push(random(0,550));
    redkirbYPos.push(random(0,350));
  }

  for(var i = 0; i < purpkirbTotal; i++){
    purpkirbXPos.push(random(0,550));
    purpkirbYPos.push(random(0,350));
  }
  
}