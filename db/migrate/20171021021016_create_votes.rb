class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :channelid
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
