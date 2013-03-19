class TasksController < ApplicationController
	def create
    @task = Task.create!(params[:task])
		respond_to do |format|
    	format.html { redirect_to tasks_url }
			format.js
		end
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(params[:task])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end
end
