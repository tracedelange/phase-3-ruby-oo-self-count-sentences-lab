require 'pry'

class String

  def sentence?
    if self[self.length-1] == '.'
      return true
    else
      return false
    end
  end

  def question?
    if self[self.length-1] == '?'
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[self.length-1] == '!'
      return true
    else
      return false
    end
  end

  def count_sentences
    final = []
    self.split('. ').each do |substring|
      substring.split('! ').each do |subsubstring|
        (subsubstring.split('? ')).each do |lastsub|
          final.push(lastsub)
        end
      end
    end
    return final.length
  end
  
end