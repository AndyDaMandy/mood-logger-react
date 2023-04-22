class CreateMoods < ActiveRecord::Migration[7.0]
  def change
    create_table :moods do |t|
      t.integer :vibe, default: 0
      t.integer :health, default: 0
      t.integer :activity, default: 0
      t.integer :happiness, defaut: 0
      t.integer :work, default: 0
      t.integer :school, default: 0
      t.integer :love, default: 0
      t.text :note

      t.timestamps
    end
  end
end
