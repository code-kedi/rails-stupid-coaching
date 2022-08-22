class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params['question']
    # like this we can use @question in our answer.html.erb
    # the key is going to be called question: {"question"=>"hello"}
    if @question == 'Hello there'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work'
    end
  end
end
