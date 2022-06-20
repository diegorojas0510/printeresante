# frozen_string_literal: true
class CreatePins < ActiveRecord::Migration[7.0]
  def change
    create_table :pins do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :image_url

      t.timestamps null: false
    end
  end
end
