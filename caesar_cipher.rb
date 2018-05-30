
class CaesarCipher

  def initialize(text, rot = 13)
    @alphabet_down = Array('a'..'z').join
    @alphabet_up = Array('A'..'Z').join
    @text = text
    @rot = rot
    @cipher_down = @alphabet_down.chars.rotate(@rot).join
    @cipher_up = @alphabet_up.chars.rotate(@rot).join
  end

  def perform
    @text = @text = @text.split.each do |x|
      if x.casecmp(x.downcase)
        x.tr!(@alphabet_down, @cipher_down)
      end
      if x.casecmp(x.upcase)
        x.tr!(@alphabet_up, @cipher_up)
      end
    end
    @text.join(' ')
  end

end