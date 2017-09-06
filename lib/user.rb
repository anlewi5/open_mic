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
    joke_array = []
    CSV.foreach(file) do |line|
      joke_array << line.split(', ')
    end
    joke_array.each do |joke|
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
