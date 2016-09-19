require 'rspec'
require 'active_model'
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'simple_email_validation'

class Person
  attr_accessor :email
  include ActiveModel::Validations
  validates :email, email: true

  def initialize(email)
    @email = email
  end
end
