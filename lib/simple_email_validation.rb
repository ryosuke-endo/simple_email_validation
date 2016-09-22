class EmailValidator < ActiveModel::EachValidator
  REG_EXP = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  class << self
    def valid?(email)
      !!(email.match(REG_EXP))
    end
  end

  def validate_each(record, attribute, value)
    unless self.class.valid?(value)
      record.errors.add(attribute, options[:message])
    end
  end
end
