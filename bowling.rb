points = Array.new
score = 0
b = gets
counter = 0
points = b.split(',').map(&:to_i)
flag = true
for i in 0..(points.length) do
  fs = nil
  if points[i] == 10
    fs = 10
    counter = counter + 1
    if i+2 < points.length
      score = score + 10 + points[1+i] + points[i+2]
    elsif i + 1 < points.length
      score = score + 10 + points[i+1]
    else
      score = score + 10
    end
  else
    if fs == nil
      fs = points[i]
      score = score + points[i].to_i
    else
      fs = fs + points[i].to_i
      score = score + points[i].to_i
      if counter != 10
        if fs == 10
          if i+1 < points.length
            score = score + points[i+1].to_i
          end
        end
        counter = counter + 1
      end
    end
  end
end
if score > 300
  score = 300
end
print "\n"
print(score)
