class CreateS3images < ActiveRecord::Migration
  def change
    create_table :s3images do |t|
      
      t.string :my_image
      
      t.timestamps null: false
    end
  end
end
