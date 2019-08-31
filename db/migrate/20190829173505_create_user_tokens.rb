class CreateUserTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tokens do |t|
      t.integer :user_id
      t.datetime :issue_at
      t.datetime :expire_at
      t.string :status
      t.string :token_type
      t.timestamps
    end
  end
end
