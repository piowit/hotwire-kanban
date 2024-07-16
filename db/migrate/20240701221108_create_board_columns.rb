class CreateBoardColumns < ActiveRecord::Migration[7.1]
  def change
    create_table :board_columns do |t|
      t.string :name
      t.references :board

      t.timestamps
    end
  end
end
