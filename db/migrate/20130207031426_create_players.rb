class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first
      t.string :last
      t.belongs_to :team
      t.integer :games_played
      t.integer :goals
      t.integer :assists
      t.integer :shots
      t.integer :tackles
      t.integer :blocks

      t.timestamps
    end
    add_index :players, :team_id
  end
end
