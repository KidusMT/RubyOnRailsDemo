class CreateClockTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_times do |t|
      t.DateTime :check_in_time
      t.DateTime :check_out_time
      t.string :status
      t.string :remark

      t.timestamps
    end
  end
end
