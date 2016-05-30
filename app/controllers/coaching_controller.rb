class CoachingController < ApplicationController


  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      ""
    elsif your_message.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == "I am going to work right now!".upcase
    ""
  elsif your_message.upcase == your_message
    "I can feel your motivation!" + " " + coach_answer(your_message)
  else
    coach_answer(your_message)
  end
end
end


# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  def show
    id = params[:id]
    @post = Post.find(id)
  end
end
