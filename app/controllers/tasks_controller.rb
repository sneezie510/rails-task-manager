class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit,:update, :destroy]

  def index         # GET /restaurants
    @tasks = Task.all
  end

  def show          # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
    @task = Task.new
  end

  def create        # POST /restaurants
    task = Task.create(task_params)

    if task.save
      redirect_to task_path(task)
    else
      render :new
    end
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
    @task.update(task_params)

    if @task.save
      redirect_to task_path(@task)
    else
      render :update
    end
  end

  def destroy       # DELETE /restaurants/:id
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :description)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
