class TodoController < ApplicationController 
    def index
    end
    def new
    end
    def create
        t = Todo.new
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{ t.id }"
    end
    def show
        @todo= Todo.find_by_id(params[:id])
        @todo_description = "English Homework"
        #     #If user types in todo/show/1 as URL make @todo_description equal to "English Homework"
        #     todo_id = params[:id]
        #     if todo_id == '1'
        #         @todo_description = "English Homework"
        #     end
        #     #If user types in todo/show/2 as URL make @todo_description equal to "Math Homework"
        #     todo_id = params[:id]
        #     if todo_id == '2'
        #         @todo_description = "Math Homework"
        #     end
        #     #If user types in todo/show/3 as URL make @todo_description equal to "Science Homework"
        #     todo_id = params[:id]
        #     if todo_id == '3'
        #         @todo_description = "Science Homework"
        #     end
        # @todo_pomodoro_estimate = 2
        #     #If user types in todo/show/1 as URL make @todo_pomodoro_estimate equal to "2"
        #     todo_id = params[:id]
        #     if todo_id == '1'
        #         @todo_pomodoro_estimate = "2"
        #     end
        #     #If user types in todo/show/2 as URL make @todo_pomodoro_estimate equal to "4"
        #     todo_id = params[:id]
        #     if todo_id == '2'
        #         @todo_pomodoro_estimate = "4"
        #     end
        #     #If user types in todo/show/3 as URL make @todo_pomodoro_estimate equal to "3"
        #     todo_id = params[:id]
        #     if todo_id == '3'
        #       @todo_pomodoro_estimate = "3"
        #     end
    end
end