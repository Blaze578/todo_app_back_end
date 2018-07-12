class TodoController < ApplicationController
    def index
        
    end
    def show
        @todo_description = "make eggs"
        @todo_pomodoro_estimate = "7"
        todo_id = params[:id]
        @todo = Todo.find_by_id(params[:id])
        if todo_id == '1'
            @todo_description = "im changed"
            @todo_pomodoro_estimate = '100'
        elsif todo_id == '5'
            @todo_description = 'hello' 
            @todo_pomodoro_estimate = '10'
            
        end
    end
    
    def new
    end
    
    def create
                    t = Todo.new
                    t.description = params['description']
                    t.pomodoro_estimate = params['pomodoro_estimate']
                    t.save
                    redirect_to "/todo/show/#{t.id}"
    end

    def edit
        @todo = todo.find_by_id(params[:id])
    end
end