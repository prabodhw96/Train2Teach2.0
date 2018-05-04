class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.text :comment
      t.string :created_at
      t.string :datetime
      t.integer :star

      t.timestamps
    end
  end
end
