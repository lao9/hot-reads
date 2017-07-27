class CreateLinkReads < ActiveRecord::Migration[5.0]
  def change
    create_table :link_reads do |t|
      t.string :url

      t.timestamps
    end
  end
end
