class Aprendiz < ActiveRecord::Base
 
  belongs_to :centro
  belongs_to :ficha
  
  validates :nombre, :presence => true 
  validates :apellido, :presence => true
  validates :doc, :presence => true
  validates :centro, :presence => true
  validates :ficha, :presence => true


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |aprendiz|
        csv << aprendiz.attributes.values_at(*column_names)
      end
    end
  end
end
