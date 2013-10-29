class CreateRoles < ActiveRecord::Migration
  def self.up 
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
    Role.create(name: "REGULAR")
    Role.create(name: "MODERATOR")
    Role.create(name: "ADMIN")
  end
  def self.down
    drop_table :roles
  end
end
