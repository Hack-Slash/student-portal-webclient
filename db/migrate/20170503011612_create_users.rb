class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :student_id
      t.string :student_email
      t.string :password_digest

      t.timestamps
    end
  end
end