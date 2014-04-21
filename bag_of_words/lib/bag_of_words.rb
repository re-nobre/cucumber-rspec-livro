class BagOfWords
  attr_reader :words

  def initialize
    @words = []
  end

  def put(*words)
    @words += words
  end
end
