class CreateCaches < ActiveRecord::Migration
  def change
    create_table :caches do |t|
      t.string :name
      t.integer :address_space
      t.integer :cache_size
      t.integer :block_size
      t.integer :lines
      t.integer :sets
      t.integer :tag_bits
      t.integer :set_bits
      t.integer :block_bits
    end
  end
end
