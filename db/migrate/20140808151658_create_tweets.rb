class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
       t.string :text
       t.float :lat
       t.float :long
       t.timestamps
    end
  end
end
