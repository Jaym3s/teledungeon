class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.string :caller
      t.string :called
      t.string :callguid
      t.string :channeltype
      t.text :callerinput
      t.text :callerinputhistory
      t.string :callername
      t.string :callerlocation

      t.timestamps
    end
  end

  def self.down
    drop_table :calls
  end
end
