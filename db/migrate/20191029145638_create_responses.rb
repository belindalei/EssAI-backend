class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :paragraph
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :essay, null: false, foreign_key: true

      t.timestamps
    end
  end
end
