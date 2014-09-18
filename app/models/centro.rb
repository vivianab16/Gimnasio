class Centro < ActiveRecord::Base
  has_many :fichas
  has_many :aprendizs
end
