class Sample < ApplicationRecord
	validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :cpf, case_sensitive: false
  validates_cpf_format_of :cpf
  validates :cpf, presence: true
  validates :zipcode, presence: true, format: { with: /\A[0-9]{5}-[0-9]{3}\z/ }
  validates :street, presence: true
  validates :number, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :phone, presence: true
  validates :birthday, presence: true, length: { is: 10, message: 'data inválida' }
  validates :email, presence: true, email: true
end
