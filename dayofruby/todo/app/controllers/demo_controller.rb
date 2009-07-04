class DemoController < ApplicationController
=begin
  def index
    task = Task.new
    task.name = "Some Task"
    render :json => task.to_json
  end
=end
end
