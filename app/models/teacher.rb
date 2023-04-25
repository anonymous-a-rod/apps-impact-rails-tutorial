class Teacher < ApplicationRecord
  validates :first_name, :last_name, :biography, presence: true
end
