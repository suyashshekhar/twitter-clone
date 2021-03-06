class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :user,          index: true
      t.string     :text,          limit: 140,  null: false
      t.timestamps                              null: false
    end
  end
end
