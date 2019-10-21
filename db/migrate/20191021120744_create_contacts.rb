class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :subject
      t.string :email
      t.boolean :legal_notice, default: false
      t.text :message

      t.timestamps
    end
  end
end
