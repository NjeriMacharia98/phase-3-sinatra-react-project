class CreateFeedbacks < ActiveRecord::Migration[6.1]
  
  def change
   create_table :feedbacks do |t|
   t.string :text
   t.integer :hotel_id
  end
 end
end
