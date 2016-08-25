require "prawn"

# Assignment
pdf = Prawn::Document.new
pdf.text "Hello World"
pdf.render_file "assignment.pdf"

#implicit
Prawn::Document.generate 'implicit.pdf' do
	text "HEllo sucks"
end

Prawn::Document.generate 'explicit.pdf' do |pdf|
	pdf.text 'Hello hoyts'
end