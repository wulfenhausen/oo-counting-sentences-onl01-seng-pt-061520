require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
      
  end

  def question?
  if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
  if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    newarray = []
    newarray = self.split(/[.?!]/)
    newarray= newarray.map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}
    newarray.count
  end
end