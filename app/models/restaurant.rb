class Restaurant < ApplicationRecord
  CATEGORIES = [["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, address: true
  validates :phonenumber
  validates :category, inclusion: { in: CATEGORIES }
end
