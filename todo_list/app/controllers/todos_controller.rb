class TodosController < ApplicationController

	def index
		@todos = Todo.all
		
	end

	def new
		@todo = Todo.new

	end

	def create
		@todo = Todo.new(todo_params)
		@todo.save

		redirect_to todos_path
		
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy

		redirect_to todos_path
		
	end

	private

	def todo_params
		params.require(:todo).permit(:title, :due_date)
		
	end

end
