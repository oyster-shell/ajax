class TodosController < ApplicationController
  def index
    @todos = Todo.all.order(:id)
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.is_done
      @todo.update(is_done: false)
    else
      @todo.update(is_done: true)
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
