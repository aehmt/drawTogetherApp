function drawALine(){
  var c = document.getElementById("myCanvas");
  var ctx = c.getContext("2d");
  ctx.moveTo(0,0);
  ctx.lineTo(700,400);
  ctx.stroke();
}

function drawCircles(){
  var c = document.getElementById("myCanvas");
  var ctx = c.getContext("2d");
  ctx.beginPath();
  ctx.arc(95,50,40,0,2*Math.PI);
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(190,100,40,0,2*Math.PI);
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(285,150,40,0,2*Math.PI);
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(380,200,40,0,2*Math.PI);
  ctx.stroke();
}

function weAreStatic(){
  var c = document.getElementById("myCanvas");
  var ctx = c.getContext("2d");
  ctx.font = "40px Arial";
  ctx.strokeText("The API is no lie",175,325);
}

$(document).ready(function(){
  drawALine();
  drawCircles();
  weAreStatic();
});
