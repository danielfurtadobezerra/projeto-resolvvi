class ProblemaVoo < ApplicationRecord
    validates :situacao, :detalhe, :usuario, presence: true 
    validates :usuario, length: {minimum:3, maximum:100}
    validates :detalhe, length: {minimum:3, maximum:250}

end
