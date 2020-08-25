class Url < ApplicationRecord
  def short_url
    number = 10
    charset = Array('A'..'Z') + Array('a'..'z')
    Array.new(number) { charset.sample }.join
  end
end
