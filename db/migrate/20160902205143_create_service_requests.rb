class CreateServiceRequests < ActiveRecord::Migration
  def change
    create_table :service_requests do |t|
      t.string :idFolio
      t.string :kind
      t.string :itDiagnosis
      t.string :ProviderDiagnosis
      t.string :material
      t.string :DocumentRequest
      t.date :RequestDate
      t.date :ExecutionDate
      t.text :History
      t.references :Delegation, index: true, foreign_key: true
      t.references :Dependency, index: true, foreign_key: true
      t.references :Provider, index: true, foreign_key: true
      t.references :Copier, index: true, foreign_key: true
      t.references :Printer, index: true, foreign_key: true
      t.references :Screen, index: true, foreign_key: true
      t.references :Telephone, index: true, foreign_key: true
      t.references :Power, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
