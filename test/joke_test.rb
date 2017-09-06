require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  attr_reader :joke

  def setup
    @joke = Joke.new({id: 1,
                      question: "Why did the strawberry cross the road?",
                      answer: "Because his mother was in a jam."
                    })
  end

  def test_it_exists
    assert_instance_of Joke, joke
  end

  def test_can_get_joke_id
    assert_equal 1, joke.id
  end

  def test_can_get_joke_question
    assert_equal "Why did the strawberry cross the road?", joke.question
  end

  def test_can_get_joke_answer
    assert_equal "Because his mother was in a jam.", joke.answer
  end

end
