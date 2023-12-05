class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|

      t.string     :title,      null: false
      t.datetime   :start_time, null: false
      t.text       :content
      t.references :user,       null: false, foreign_key: true
      t.references :diary
      t.timestamps
    end
  end
end
