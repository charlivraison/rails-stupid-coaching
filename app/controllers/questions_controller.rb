class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]  # Lire la question depuis les paramètres
    @answer = generate_answer(@question)  # Calculer la réponse
  end

  private

  def generate_answer(question)
    if question == "I am going to work"
      "Great!"
    elsif question.include?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end


end
