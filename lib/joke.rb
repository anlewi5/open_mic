class Joke

  attr_reader :id, :question, :answer

  def initialize(joke_hash)
    @id = joke_hash[:id]
    @question = joke_hash[:question]
    @answer = joke_hash[:answer]
  end

end
