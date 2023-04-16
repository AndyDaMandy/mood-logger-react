class CreateMoods < ActiveRecord::Migration[7.0]
  def change
    create_table :moods do |t|
      t.datetime :date_time
      t.string :vibe
      t.string :health
      t.string :activity
      t.string :happiness
      t.string :work
      t.string :school
      t.string :love
      t.text :note

      t.timestamps
    end
  end
end
