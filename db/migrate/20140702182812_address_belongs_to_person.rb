class AddressBelongsToPerson < ActiveRecord::Migration
  def change
    add_column :addresses, :person_id, :integer
  end
end
