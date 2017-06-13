class Sample < ApplicationRecord
# validates :first_name, presence: true
 #  validates :last_name, presence: true
 #  validates_uniqueness_of :cpf, case_sensitive: false
 #  validates_cpf_format_of :cpf
 #  validates_cpf_format_of :cnpj
 # 	validates_cpf_format_of :website
 #  validates :cpf, presence: true
 #  validates :zipcode, presence: true
 #  validates :street, presence: true
 #  validates :number, presence: true
 #  validates :neighborhood, presence: true
 #  validates :city, presence: true
 #  validates :state, presence: true
 #  validates :phone, presence: true
 #  validates :birthday, presence: true, length: { is: 10, message: 'data inválida' }
 #  validates :email, presence: true, email: true

  mount_uploader :file, FileUploader
  mount_uploader :picture, PhotoUploader
  

end
