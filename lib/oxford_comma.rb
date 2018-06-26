
def oxford_comma(array)
  def to_sentence
    default_words_connector     = ", "
    default_two_words_connector = " and "
    default_last_word_connector = ", and "

    case length
      when 0
        ""
      when 1
        self[0].to_s.dup
      when 2
        "#{self[0]}#{options[:two_words_connector]}#{self[1]}"
      else
        "#{self[0...-1].join(options[:words_connector])}#{options[:last_word_connector]}#{self[-1]}"
    end
  end
  array.to_sentence
end