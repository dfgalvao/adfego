class Company < ApplicationRecord

    has_many :vacancies

    validates :name, :manager, :phone, :email, :address, presence: true
    validates :email, uniqueness: true
    # Valida a formatação do email // exemplo@.
    # Vale lembrar que, o metodo não verifica o domímio.
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
