Shoes.app do
	background "#EFC"
	border "#BE8", :strokewidth => 4
	stack(:margin => 12) do
		para "Enter your name"
		flow do
			@name = edit_line
			@ok = button "Ok"
		end
	end
	
	@ok.click do
		@name.text = "Hello #{@name.text}"
	end
end
