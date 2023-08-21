class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @your_message = params[:question]

    if @your_message.downcase == " i am going to work right now!"
      return @answer = "Great!"

    elsif @your_message.include?('?')
      return @answer = "Silly question, get dressed and go to work!!"
      
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
