DASH = [8, 13, 18, 23]
HEX = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def uuid_gen
  uuid = ''

  36.times do |i|
    if DASH.include?(i)
      uuid << '-'
    else
      uuid << HEX.sample
    end
  end
  uuid
end

p uuid_gen()