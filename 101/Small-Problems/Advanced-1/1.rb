ADVERB = %w[quickly slowly lazily madly casually].freeze
NOUN = %w[dog cat car bicycle tuba sunglasses hat foot].freeze
ADJECTIVE = %w[silly funny crazy serious curious].freeze
VERB = %w[run walk swim breathe explode smile].freeze

def madlibs(text_file)
  text = File.read(text_file)
  sections = text.split('|')
  sections.map! do |section|
    case section
    when 'verb' then VERB.sample
    when 'noun' then NOUN.sample
    when 'adverb' then ADVERB.sample
    when 'adjective' then ADJECTIVE.sample
    else section
    end
  end
  puts sections.join
end

madlibs('dont_worry.txt')