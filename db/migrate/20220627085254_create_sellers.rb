class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :contact
    end
  end
end
