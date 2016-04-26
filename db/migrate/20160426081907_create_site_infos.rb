class CreateSiteInfos < ActiveRecord::Migration
  def change
    create_table :site_infos do |t|
      t.string :title
      t.string :subtitle
      t.string :address

      t.timestamps null: false
    end
  end
end
