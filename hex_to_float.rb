
def hex_to_float(hex_value)
  hex_pairs = hex_value.to_s(16).upcase.scan(/../)
  hex_pairs.map do |x|
    (x.hex / 255.0).round(4)
  end
end

p hex_to_float(0x33BAE7)
