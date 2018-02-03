class CreateTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :terms do |t|
      t.string :title
      t.references :competence, foreign_key: true

      t.timestamps
    end
  end
end
