class Company < ActiveRecord::Base
  attr_accessible :celular, :email, :nome, :telefone, :skype, :facebook, :twitter
end
