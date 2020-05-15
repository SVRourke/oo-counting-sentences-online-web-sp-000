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
    if self.length > 1
      self.gsub!(/[!?]/, ".").split(". ").count
    else
      0
    end
  end
end
