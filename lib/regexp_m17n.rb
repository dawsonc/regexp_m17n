module RegexpM17N
  def self.non_empty?(str)
    # Don't handle dummy encodings
    if str.enc.dummy?
      fail ArgumentError, 'argument must not be encoded with dummy encoding'
    end

    str.encode!('utf-8')
    str =~ /^.+$/
  end
end