class CreateBinfos < ActiveRecord::Migration
  def change
    create_table :binfos do |t|
    	t.string :title
        t.string :author
        t.integer :page
        t.datetime :date_available

      t.timestamps
    end
  end
end
