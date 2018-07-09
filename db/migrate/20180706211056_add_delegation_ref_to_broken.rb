class AddDelegationRefToBroken < ActiveRecord::Migration
  def change
    add_reference :brokens, :Delegation, index: true, foreign_key: true
  end
end
