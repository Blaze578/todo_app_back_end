class TodoController < ApplicationController
    def index
        
    end
    def show
        @todo_description = "make eggs"
        @todo_pomodoro_estimate = "7"
    end
end