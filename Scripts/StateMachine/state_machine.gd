extends Node

var states_map = {};
var current_state = null;
var _active = false setget set_active;

func _ready():
	for child in get_children():
		child.connect("finished",self,"change_state");
	owner.connect("finished",self,"change_state");
	set_active(false);

func _input(event):
	current_state.handle_input(event);

func _physics_process(delta):
	current_state.update(delta);

func change_state(state_name):
	if not _active:
		return;
	
	current_state = states_map[state_name];
	current_state.enter();

func set_active(value):
	_active = value;
	
	set_physics_process(_active);
	set_process_input(_active);
	
	if not _active:
		current_state = null;
