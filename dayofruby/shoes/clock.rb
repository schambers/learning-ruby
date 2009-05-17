Shoes.app do

  @width = 40
  @left = 10
  @margin = 10
  @top = 180
  @offset = @width + @margin
  @fill = red
  @images = [[],[0],[1],[0,1],[2],[0,2],[1,2],[0,1,2],[3],[0,3]]

	def gen_recs(num)
		return stack {
			fill @fill
			num.times do |i|
				rect :left => @left, :top => (@top - (i*offset)), :width => @width
			end
			@left += @offset
		}
	end
	
	def turn_on_images(num, stack1, stack2)
		time = num.to_s.split(//)
			t1 = []
			t1 = @images[time[0].to_i] if time.length > 1
			t2 = @images[time[time.length-1].to_i]
			activate_images(stack1, t1)
			activate_images(stack2, t2)
	end
	
	def activate_images(stack, image_pos_array)
		stack.contents.each do |item|
			item.style :fill => @fill
		end
		
		image_pos_array.each do |pos|
			stack.contents[pos].style :fill => green
		end
	end

	@hours1 = gen_recs(2)
	@hours2 = gen_recs(4)

	@minutes1 = gen_recs(3)
	@minutes2 = gen_recs(4)

	@seconds1 = gen_recs(3)
	@seconds2 = gen_recs(4)

	every(1) do
		now = Time.new
	
		turn_on_images(now.sec, @seconds1, @seconds2)
		turn_on_images(now.min, @minutes1, @minutes2)
		turn_on_images(now.hour, @hours1, @hours2)
	end
end
