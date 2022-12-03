/// @description 


// Random loop timing
//show_message("Index:"+string(ceil(image_index))+"Number:"+string(image_number));

if (image_speed > 0){
	// Primer error del tuto
	if (ceil(image_index) == image_number) {
		image_speed = 0;
		alarm[0] = irandom_range(loop_range01,loop_range02);
	}
}

// Depth sorting
depth = -y;

