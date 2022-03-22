class AnswersController < ApplicationController
    def create
        @subject = Subject.find(params[:subject_id])
        @subject.answers.create(answer_params)
        redirect_to subject_path(@subject)
    end

    def destroy
        @subject = Subject.find(params[:subject_id])
        @answer = @subject.answers.find(params[:id])
        @answer.destroy
        redirect_to @subject, status: :see_other
    end

    private
    def answer_params
        params.require(:answer).permit(:name, :content)
    end

end

