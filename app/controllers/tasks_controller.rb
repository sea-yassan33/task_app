class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    if task.save
      redirect_to tasks_path
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :content)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
