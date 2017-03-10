class TodosController < ApplicationController

	def index
		@todos = Todo.all
		@todos = Todo.order(due_date: :asc)
		
	end

	def new
		@todo = Todo.new

	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to todos_path   #重新發出request，會重整頁面

		else
			render :action => :new   #保留需求不會清空資料，使用者可以繼續填寫錯誤的部分

		end
		
	end

	def edit
		@todo = Todo.find(params[:id])
		
	end

	def update
		@todo = Todo.find(params[:id])
		@todo.update(todo_params)

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
