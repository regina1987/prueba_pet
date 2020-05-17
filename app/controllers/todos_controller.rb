class TodosController < ApplicationController
before_action :authenticate_user!

  def index
    @todos=  current_user.todos.all
  end

  def show
    @todo=Todo.find(params[:id])
    @all=Todo.where(task: @todo.task, status:true).count
    @all_person=Todo.where(task: @todo.task, status:true)
  end

  def update
    @todo=Todo.find(params[:id])
    @todo.status =! @todo.status
    @todo.save
    redirect_to todos_index_path
  end

private

end
