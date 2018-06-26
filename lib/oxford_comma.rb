def oxford_comma(array)
  def to_sentence(options = {})
    if defined?(I18n)
      default_words_connector     = I18n.translate(:'support.array.words_connector',     :locale => options[:locale])
      default_two_words_connector = I18n.translate(:'support.array.two_words_connector', :locale => options[:locale])
      default_last_word_connector = I18n.translate(:'support.array.last_word_connector', :locale => options[:locale])
    else
      default_words_connector     = ", "
      default_two_words_connector = " and "
      default_last_word_connector = ", and "
    end

    options.assert_valid_keys(:words_connector, :two_words_connector, :last_word_connector, :locale)
    options.reverse_merge! :words_connector => default_words_connector, :two_words_connector => default_two_words_connector, :last_word_connector => default_last_word_connector

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