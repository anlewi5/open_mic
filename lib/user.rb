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

end
