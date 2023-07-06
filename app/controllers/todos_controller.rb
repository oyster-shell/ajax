class TodosController < ApplicationController
  def index
    @todos = Todo.all.order(:id)
  end

  def create
    todo = Todo.new(todo_params)
    todo.save
    redirect_to root_path
  end

  def update
    todo = Todo.find(params[:id])
    if todo.is_done
      todo.update(is_done: false)
    else
      todo.update(is_done: true)
    end
    redirect_to root_path
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to root_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
