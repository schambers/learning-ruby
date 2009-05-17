Shoes.app do
	@push = button "Push me"
	@note = para "Nothing pushed"

	@push.click do
		@note.replace "AHA! Click!"
	end
end
