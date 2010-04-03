
class Paragraph

  def initialize(data)
    @data = data
  end

  def random_phrase(repository)
    return @data[repository][rand(@data[repository].length)]
  end

end