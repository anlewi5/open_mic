require 'csv'

class User

  attr_reader :name
  attr_accessor :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def perform_routine_for(user)
    user.jokes = @jokes
  end

  def learn_routine(file)
    CSV.foreach(file) do |joke|
      #how do you remove 1st line of [id, question, answer]? this is super hacky right now
      next if joke.include? "id"
      next if joke.include? "question"
      next if joke.include? "answer"
      id = joke[0]
      question = joke[1]
      answer = joke[2]
      new_joke = Joke.new({
                id: id,
                question: question,
                answer: answer
              })
      learn(new_joke)
    end
  end

end
