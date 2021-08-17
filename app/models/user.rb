# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  #encriypt password
  has_secure_password

  #Validateions
  validates_presence_of :name, :email, :password_digest
end
