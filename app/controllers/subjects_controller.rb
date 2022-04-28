class SubjectsController < ApplicationController
    def index
        @subjects = Subject.all
        @q = Subject.ransack(params[:q])
        @users = @q.result(distinct: true)
    end

    def show
        @subject = Subject.find(params[:id])
    end

    def new
        @subject = Subject.new
    end

    def create
        @subject = Subject.new(subject_params)
        if @subject.save
            redirect_to @subject
        else
            render 'new', status: :unprocessable_entity
        end
    end

    def edit
        @subject = Subject.find(params[:id])
    end

    def update
        @subject = Subject.find(params[:id])
        if @subject.update(subject_params)
            redirect_to @subject
        else
            render 'edit', status: :unprocessable_entity
        end
    end

    def destroy
        @subject = Subject.find(params[:id])
        @subject.destroy
        redirect_to subject_path
    end

    def explain
    end

    private
    def subject_params
        params.require(:subject).permit(:subject_name, :teacher_name)
    end
end
