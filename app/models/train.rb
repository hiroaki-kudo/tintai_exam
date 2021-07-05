class Train < ApplicationRecord
  belongs_to :house, optional:true
end
