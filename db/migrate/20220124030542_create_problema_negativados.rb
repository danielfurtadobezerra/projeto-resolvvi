class CreateProblemaNegativados < ActiveRecord::Migration[7.0]
  def change
    create_table :problema_negativados do |t|
      t.string :divida
      t.string :categoria
      t.string :usuario
      t.string :endereco
      t.string :provas
      t.string :advogado

      t.timestamps
    end
  end
end
