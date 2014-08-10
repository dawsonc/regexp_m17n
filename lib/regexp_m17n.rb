module RegexpM17N
  def self.non_empty?(str)
    if str.encoding.dummy?
      str = str.force_encoding('utf-8')
      r = Regexp.new('^.+$')
    else
      r = Regexp.new('^.+$'.encode(str.encoding.name))
    end

    str =~ r
  end
end
