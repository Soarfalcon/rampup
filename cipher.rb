CIPHER = { "a" => "z", "b" => "y", "c" => "x", "d" => "w",
           "e" => "v", "f" => "u", "g" => "t", "h" => "s",
           "i" => "r", "j" => "q", "k" => "p", "l" => "o",
           "m" => "n", "n" => "m", "o" => "l", "p" => "k",
           "q" => "j", "r" => "i", "s" => "h", "t" => "g",
           "u" => "f", "v" => "e", "w" => "d", "x" => "c",
           "y" => "b", "z" => "a", " " => "/" }

def encrypt(input)
  letters = input.split("")
  letters.map { |letter| CIPHER[letter] }.join("")
end

def decrypt(input)
  letters = input.split("")
  decrypt_letters = letters.map { |letter| CIPHER.key(letter)}
  decrypt_letters.join("")
end

#puts encrypt("Whether in the United States or abroad, USDEC marketing programs are hard at work to seize new and expanded opportunities for U.S. dairy products and ingredients. The listing below features upcoming trade shows, meetings and other key activities.")

puts decrypt("svgsvi/rm/gsv/mrgvw/gzgvh/li/zyilzw//nzipvgrmt/kiltiznh/ziv/sziw/zg/dlip/gl/hvrav/mvd/zmw/vckzmwvw/lkkligfmrgrvh/uli//wzrib/kilwfxgh/zmw/rmtivwrvmgh/sv/orhgrmt/yvold/uvzgfivh/fkxlnrmt/gizwv/hsldh/nvvgrmth/zmw/lgsvi/pvb/zxgrergrvh")


