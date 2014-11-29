var colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple'];
          
function getRandomColor() {
    return colors[Math.round(Math.random() * 5)];
}
      
function tango(layer) {     
  for(var n = 0; n < layer.getChildren().length; n++) {
    var color = Kinetic.Util.getRGB(getRandomColor());
    var shape = layer.getChildren()[n];
    var stage = shape.getStage();
    var radius = Math.random() * 100 + 20;
    
    new Kinetic.Tween({
      node: shape, 
      duration: 1,
      x: Math.random() * stage.width(), 
      y: Math.random() * stage.height(), 
      rotation: Math.random() * 360, 
      radius: radius,
      opacity: (radius - 20) / 100,
      easing: Kinetic.Easings.EaseInOut,
      fillRed: color.r,
      fillGreen: color.g,
      fillBlue: color.b
    }).play();
  }
}

$(document).ready(function(){
  console.log('hello');
  var stage = new Kinetic.Stage({
    container: 'container',
    width: 578,
    height: 363
  });

  var layer = new Kinetic.Layer();

  for(var n = 0; n < 10; n++) {
    var radius = Math.random() * 100 + 20;
    var color = Kinetic.Util.getRGB(getRandomColor());
    var shape = new Kinetic.RegularPolygon({
      x: Math.random() * stage.getWidth(),
      y: Math.random() * stage.getHeight(),
      sides: Math.ceil(Math.random() * 5 + 3),
      radius: radius,
      fillRed: color.r,
      fillGreen: color.g,
      fillBlue: color.b,
      opacity: (radius - 20) / 100,
      draggable: true
    });

    layer.add(shape);
  }

  stage.add(layer);

  $('#tango').click(function() {
    tango(layer);
  });
});
