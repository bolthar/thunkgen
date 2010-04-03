
class Printer

  def initialize
    @buzzwords    = File.open(File.join(File.dirname(__FILE__), 'data', 'buzzwords')).lines.to_a.map { |bword| bword.strip }
    @conjunctions = File.open(File.join(File.dirname(__FILE__), 'data', 'conjunctions')).lines.to_a.map { |cnj| cnj.strip }
  end

  def buzzify_sentence(sentence)
    sentence.scan(/\$BUZZ/).length.times do
      sentence.sub!("$BUZZ", @buzzwords[rand(@buzzwords.length)])
    end
    return sentence
  end

  def build_sentences(sentences)
    result = ""
    sentences.each do |sentence|
      result += buzzify_sentence(sentence)
      result += " #{@conjunctions[rand(@conjunctions.length)]} " unless sentences.last == sentence
    end
    return result
  end
  
end