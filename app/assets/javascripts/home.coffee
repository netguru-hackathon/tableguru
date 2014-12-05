getRandomColor = ->
  colors[Math.round(Math.random() * 5)]
tango = (layer) ->
  n = 0

  while n < layer.getChildren().length
    color = Kinetic.Util.getRGB(getRandomColor())
    shape = layer.getChildren()[n]
    stage = shape.getStage()
    radius = Math.random() * 100 + 20
    new Kinetic.Tween(
      node: shape
      duration: 1
      x: Math.random() * stage.width()
      y: Math.random() * stage.height()
      rotation: Math.random() * 360
      radius: radius
      opacity: (radius - 20) / 100
      easing: Kinetic.Easings.EaseInOut
      fillRed: color.r
      fillGreen: color.g
      fillBlue: color.b
    ).play()
    n++
  return
colors = [
  "red"
  "orange"
  "yellow"
  "green"
  "blue"
  "purple"
]
$(document).ready ->
  console.log "hello"
  stage = new Kinetic.Stage(
    container: "container"
    width: 578
    height: 363
  )
  layer = new Kinetic.Layer()
  n = 0

  while n < 10
    radius = Math.random() * 100 + 20
    color = Kinetic.Util.getRGB(getRandomColor())
    shape = new Kinetic.RegularPolygon(
      x: Math.random() * stage.getWidth()
      y: Math.random() * stage.getHeight()
      sides: Math.ceil(Math.random() * 5 + 3)
      radius: radius
      fillRed: color.r
      fillGreen: color.g
      fillBlue: color.b
      opacity: (radius - 20) / 100
      draggable: true
    )
    layer.add shape
    n++
  stage.add layer
  $("#tango").click ->
    tango layer
    return

  return
