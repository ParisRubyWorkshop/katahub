class CreateKata < ActiveRecord::Migration[5.0]
  def change
    create_table :katas do |t|
      t.string :github_user_name
      t.string :github_repo_name
      t.timestamps
    end
  end
end
