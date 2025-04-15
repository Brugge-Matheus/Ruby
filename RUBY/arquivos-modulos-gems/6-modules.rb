# Definindo modulos
module LengthConversion
  def self.miles_to_feet(miles)
    return miles * 5380
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    return feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

def fn
  return 'Hello'
end