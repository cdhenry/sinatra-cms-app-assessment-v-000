class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
			t.references :castable, polymorphic: true, index: true
    end

    create_table :fans do |t|
      t.string :name
    end

		create_table :artists do |t|
      t.string :name
    end

	  create_table :producers do |t|
      t.string :name
    end	
  end
end
