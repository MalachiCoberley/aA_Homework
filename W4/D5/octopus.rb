ocean = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def slug(arr)
  longest = ""
  arr.each do |el|
    arr.each do |el2|
      longest = el if el.length > el2.length
    end
  end
  longest
end


def dom(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]

  dom_help(dom(left), dom(right))
end

def dom_help(left, right)
  output = []
  until left.empty? || right.empty?
    if left[0].length < right[0].length
      output << left.shift
    else
      output << right.shift
    end
  end
  output + left + right
end

def clever(arr)
  longest = ""
  arr.each do |el|
    longest = el if el.length > longest.length
  end
  longest
end

tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}

def slow_dance(dir, tiles)
  tiles[dir]
end

p slow_dance("up", tiles_hash)

p slow_dance("right-down", tiles_hash)


