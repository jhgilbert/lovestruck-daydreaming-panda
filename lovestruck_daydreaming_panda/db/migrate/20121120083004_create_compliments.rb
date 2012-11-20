class CreateCompliments < ActiveRecord::Migration
  def change
    create_table :compliments do |t|
      t.text_area :text

      t.timestamps
    end
  end
end
