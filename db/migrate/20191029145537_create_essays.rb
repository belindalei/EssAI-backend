class CreateEssays < ActiveRecord::Migration[6.0]
  def change
    create_table :essays do |t|
      t.string :title

      t.timestamps
    end
  end
end
