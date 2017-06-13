def get_grade(grade1, grade2, grade3)
  avg = (grade1 + grade2 + grade3) / 3
  if avg >= 90 
    'A'
  elsif avg >= 80 && avg < 90
    'B'
  elsif avg >= 70 && avg < 80
    'C'
  elsif avg >= 60 && avg < 70
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
