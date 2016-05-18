def overlap(rect1, rect2)
  # Left Bottom edge of rectangle 1
  l1_x, l1_y = rect1.first
  # Right Top edge of rectangle 1
  r1_x, r1_y = rect1.last
  # Left Bottom edge of rectangle 2
  l2_x, l2_y = rect2.first
  # Right Top edge of rectangle 2
  r2_x, r2_y = rect2.last

  # Rectangles donot overlap if
  # 1. One rectangle is above the top edge of the other
  # 2. One rectangle is on the right side of right edge of other
  if l2_x >= r1_x || l1_x >= r2_x
    # One rectangle is on the right side of right edge of other
    return false
  elsif r1_y <= l2_y || r2_y <= l1_y
    # One rectangle is above the top edge of the other
    return false
  else
    return true
  end
end
