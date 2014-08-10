module RegexpM17N
  def self.non_empty?(str)
    r = Regexp.new('^.+$'.encode(str.encoding.name), Regexp::FIXEDENCODING)

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
