class CreateBlankets < ActiveRecord::Migration
  def change
    create_table :blankets do |t|
      t.string  :name
      t.string  :color
      t.string  :fabric
      t.string  :weight
      t.timestamps null: false
    end
  end
end
