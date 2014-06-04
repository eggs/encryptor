class Encryptor
 
 def cipher(rotation)
   characters = (' '..'z').to_a
   rotated_characters = characters.rotate(rotation)
   Hash[characters.zip(rotated_characters)]
 end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end


  def encrypt(string, rotation)
    # 1. Cut the input string into letters
      letters = string.split("")

      # 2. Encrypt those letters one at a time, gathering the results
      letters.collect do |letter|
        encrypted_letter = encrypt_letter(letter, rotation)
      end
  end
  
  def decrypt(string)
    letters = string.split("")
    letters.collect do |letter|
      letter = decrypt_letter(letter)
    end
  end
  
  def decrypt_letter(letter)
    letter.downcase
    returned_letter = cipher.key(letter)
  end

end
