class Kata < ApplicationRecord
  self.table_name = "katas"
  attr_accessor :readme
end
