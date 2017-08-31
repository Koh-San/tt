class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.string :comment
      t.string :written_by

      t.timestamps null: false
    end
  end
end
