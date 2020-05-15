require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    self.gsub!(/[!?]/, ".").split(".").count
    # binding.pry
  end
end

puts "one! two. Three!".count_sentences