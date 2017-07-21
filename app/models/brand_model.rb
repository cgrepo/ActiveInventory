class BrandModel < ActiveRecord::Base

	has_one :User
  validate :brand_names
  
  def brandx=(data)
    write_attribute(:brandx, data.to_s.upcase)
  end

  def modelx=(data)
    write_attribute(:modelx, data.to_s.upcase)
  end
  
  def brand_names
    unless self.brandx.match(/ACER|ASUS|CLON|COMPAQ|DELL|EPSON|HP|IBM|LENOVO|SAMSUNG|SONY|ISB SOLABASIC|CANON|KONICA|XEROX|PANASONIC|CISCO|VIEWSONIC/)
      errors.add(:brandx, "Nombre de la Marca es Incorrecto")
    end
  end
end
