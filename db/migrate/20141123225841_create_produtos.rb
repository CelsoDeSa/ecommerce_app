class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :foto
      t.string :descricao
      t.string :preco

      t.timestamps
    end
  end
end
