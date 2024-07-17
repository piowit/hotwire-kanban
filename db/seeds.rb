board = Board.create!(name: "Visuality Workshops")

[ 'To Do', 'In Progress', 'Review', 'Done', 'Archived' ].each_with_index do |column_name, index|
  column = board.board_columns.create!(name: column_name)

  rand(1..3).times do |j|
    column.cards.create!(title: "Card #{j + 1}", description: "Description for card #{j + 1} in #{column_name}")
  end
end

puts 'Seed data created successfully!'
puts 'Have fun at our workshops!'
