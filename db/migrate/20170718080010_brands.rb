class Brands < ActiveRecord::Migration[5.1]
  def change
  	create_table(:brands) do |t|
        t.column(:description, :string)

        t.timestamps()
    end
  end
end
