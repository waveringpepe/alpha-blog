class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :whatsapp
      t.string :skype
      t.string :language
      t.string :purpose
      t.string :age
      t.string :username
      t.string :level
      t.string :begin
      t.string :schedule
      t.string :recommendation
      t.string :code
    end
  end
end
