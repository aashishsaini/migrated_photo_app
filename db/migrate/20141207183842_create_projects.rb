class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :code
      t.string :title
      t.string :series
      t.string :isbn
      t.string :copyright
      t.string :number
      t.string :author
      t.string :level
      t.string :imprint
      t.string :edition
      t.string :acronym
      t.integer :product_type
      t.references :imprint, index: true
      t.decimal :budget, :precision => 8, :scale => 2
      t.integer :image_assets
      t.integer :media_assets
      t.integer :text_assets
      t.date :start
      t.date :revised_start
      t.date :close
      t.date :revised_close
      t.date :printer
      t.date :revised_printer
      t.string :color
      t.string :print_run
      t.string :trim_size
      t.decimal :price, :precision => 8, :scale => 2
      t.text :free_text
      t.references :user

      t.timestamps
    end
  end
end
