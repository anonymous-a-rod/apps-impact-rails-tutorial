class Teacher < ApplicationRecord
  validates :first_name, :last_name, :biography, presence: true

  before_create :display_greetings

  def display_greetings
    puts 'Hello, you executed before action callback'
  end
end
