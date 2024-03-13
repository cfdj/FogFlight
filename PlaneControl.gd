extends CharacterBody3D

@export_category("FlightStats")
@export var speed:float
@export var turnRate:float;
@export var pitchRate:float;
@export var rollRate:float;
@export var body:MeshInstance3D
func _ready():
	pass;

##Some spining around the plane
##This probably isn't helpful for learning godot
func _physics_process(delta):
	velocity =Vector3.FORWARD*speed;
	if(Input.is_action_pressed("PitchDown")):
		body.transform.basis = body.transform.basis.rotated(Vector3(1,0,0),-pitchRate)
	elif(Input.is_action_pressed("PitchUp")):
		body.transform.basis = body.transform.basis.rotated(Vector3(1,0,0),pitchRate)
	if(Input.is_action_pressed("Left")):
		body.transform.basis = body.transform.basis.rotated(Vector3(0,1,0),turnRate)
	elif (Input.is_action_pressed("Right")):
		body.transform.basis = body.transform.basis.rotated(Vector3(0,1,0),-turnRate)
	if (Input.is_action_pressed("RollClockwise")):
		body.transform.basis = body.transform.basis.rotated(Vector3(0,0,1),-rollRate)
	elif (Input.is_action_pressed("RollAntiClockWise")):
		body.transform.basis = body.transform.basis.rotated(Vector3(0,0,1),rollRate)
	
	move_and_slide()
