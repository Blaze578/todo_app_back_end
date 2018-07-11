class TodoController < ApplicationController
    def index
        
    end
    def show
        @todo_description = "make eggs"
        @todo_pomodoro_estimate = "7"
        todo_id = params [id]
        if todo_id == '1'
            @todo_description = "im changed"
            @todo_pomodoro_estimate = '100'
            elsif todo_id == '5'
            @todo_description = 'hello' 
            @todo_pomodoro_estimate = '10'
        end
    end
end