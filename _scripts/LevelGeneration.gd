extends TileMap

var startCellX
var startCellY
var maxCells = 20
var n = 0
var curCellX
var curCellY
var nextCell

func _ready():
	randomize ()
	startCellX = (randi() % 10)+3
	startCellY = (randi() % 9)+1
	set_cell(startCellX, startCellY,randi() % 3,false,false,false)
	curCellX = startCellX
	curCellY = startCellY
	set_process(true)

func _process(delta):
	if n < maxCells:
		nextCell = randi() % 3
		if nextCell == 0:
			set_cell(curCellX, curCellY-1,randi() % 3,false,false,false)
			curCellY -= 1
			n += 1
		elif nextCell == 1:
			set_cell(curCellX+1, curCellY,randi() % 3,false,false,false)
			curCellX += 1
			n += 1
		elif nextCell == 2:
			set_cell(curCellX, curCellY+1,randi() % 3,false,false,false)
			curCellY += 1
			n += 1
		else:
			set_cell(curCellX-1, curCellY,randi() % 3,false,false,false)
			curCellX -= 1
			n += 1
	