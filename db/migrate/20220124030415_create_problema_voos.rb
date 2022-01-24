class CreateProblemaVoos < ActiveRecord::Migration[7.0]
  def change
    create_table :problema_voos do |t|
      t.string :situacao
      t.string :detalhe
      t.string :usuario
      t.string :endereço
      t.string :provas
      t.string :advogado

      t.timestamps
    end
  end
end
