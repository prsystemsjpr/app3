class CreateImguploads < ActiveRecord::Migration
  def change
    create_table :imguploads do |t|
      t.string :image
      t.string :uid
      t.string :remark

      t.timestamps null: false
    end
  end
end
