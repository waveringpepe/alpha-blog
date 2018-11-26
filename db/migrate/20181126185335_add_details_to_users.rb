class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :skype, :string
    add_column :users, :whatsapp, :string
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
  end
end
