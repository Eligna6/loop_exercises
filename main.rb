def even_numbers(start_num, end_num)
  print_boxed_text("Even numbers:")
  puts "Even numbers:"
  nums = (start_num..end_num).select(&:even?)
  print nums
  puts
end

def odd_numbers(start_num, end_num)
  print_boxed_text("Odd numbers:")
  nums = (start_num..end_num).select(&:odd?)
  print nums
  puts
end

def multiplication_table(start_num, end_num, table_size)
  print_boxed_text("Multiplication table:")

  (start_num..end_num).each do |i|
    print_boxed_text("Table of #{i}:")
    table = {}
  
    (0..table_size).each do |j|
      result = i * j
      table["#{i} x #{j}"] = result
    end
  
    table.each do |key, value|
      printf("%-8s = %2d\n", key, value)
    end
  
    puts
  end
end


def rectangle_triangle(height)
  print_boxed_text("Rectangle triangle:")

  (1..height).each do |i|
    spaces = " " * (height - i)
    asterisks = "*" * i
    puts "#{spaces}#{asterisks}"
  end
  puts
end

def equilateral_triangle(height)
  print_boxed_text("Equilateral Triangle:")
  
  (1..height).each do |i|
    spaces = " " * (height - i)
    asterisks = "*" * (2 * i - 1)
    puts "#{spaces}#{asterisks}"
  end
end

def inverted_triangle(height)
  print_boxed_text("Inverted Triangle:")
  
  (0...height).reverse_each do |i|
    spaces = " " * (height - i - 1)
    asterisks = "*" * (2 * i + 1)
    puts "#{spaces}#{asterisks}"
  end
end

def diamond(height)
  print_boxed_text("Diamond:")
  
  # Rhombus top
  (1..height).each do |i|
    spaces = " " * (height - i)
    asterisks = "*" * (2 * i - 1)
    puts "#{spaces}#{asterisks}"
  end
  
  # Rhombus bottom
  (height-1).downto(1) do |i|
    spaces = " " * (height - i)
    asterisks = "*" * (2 * i - 1)
    puts "#{spaces}#{asterisks}"
  end
end

def print_boxed_text(text)
  text_length = text.length
  border_length = text_length + 5
  
  horizontal_border_character = "~"
  vertical_border_character = "|"

  border = horizontal_border_character * (border_length - 1)
  side_padding = vertical_border_character + " " * (border_length - 3) + vertical_border_character

  puts border
  puts side_padding
  puts "#{vertical_border_character} #{text} #{vertical_border_character}"
  puts side_padding
  puts border
end


# MATH
even_numbers(0,20)
odd_numbers(0,20)
multiplication_table(0,9,10)
# TRIANGLES
forms_height = 6
rectangle_triangle(forms_height)
equilateral_triangle(forms_height)
inverted_triangle(forms_height)
diamond(forms_height)
