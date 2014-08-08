module RegexpM17N
  def self.non_empty?(str)
    # str.encode!('utf-8')
    r = Regexp.new('^.+$')

    str =~ r
  end
end