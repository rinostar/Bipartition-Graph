def possible_bipartition(dislikes)
  groups = []
  
  dislikes.length.times do |i|
    if groups[i].nil?
      groups[i] = 1
    end

    if !dislikes[i].nil?
      dislikes[i].each do |n|
        groups[n] = (-groups[i]) if groups[n].nil?
        return false if groups[n] == groups[i]
      end
    end
  end

  return true
end
