class TodoController < ApplicationController 
    def index
    end
    def show
        @todo_description = "English Homework"
        @todo_pomodoro_estimate = 2
    end
end