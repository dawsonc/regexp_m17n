module RegexpM17N
  def self.non_empty?(str)
    if str.encoding.dummy?
      str = str.force_encoding('utf-8')
      r = Regexp.new('^.+$')
    else
      r = Regexp.new('^.+$'.encode(str.encoding.name))
    end

    print "#{r.inspect} =~ #{str.encode('utf-8')} (#{r.encoding.name} with #{str.encoding.name}) "

    result = str =~ r

    if result
      puts 'Success'
      result
    else
      puts 'Failure'
      result
    end
  end
end
