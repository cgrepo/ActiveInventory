require 'prawn'

#pdf = Prawn::Document.new
Prawn::Document.generate 'explicit.pdf' do 
	stroke_axis
	text "The cursor its here: #{cursor}"
	text "Now its her #{cursor}"
	move_down 200
	text "on the first move the cursor went down to: #{cursor}"	
	move_up 100
	text "on the second move the cursor  went up to:#{cursor}"

	move_cursor_to 50
	text "on the last move the cursor went directly to:#{cursor}"
end