class PigLatinizer

    def piglatinize(input)

        sentence_sniffer = input.split(" ")
        pig_words = sentence_sniffer.map! do |word|

            deconstructed_word = word.split("")
            vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
            first_letter = [deconstructed_word[0]]

            if first_letter.any? {|l| vowels.include?(l)}
                deconstructed_word << "way"
            else
                until [deconstructed_word[0]].any? {|l| vowels.include?(l)}
                    deconstructed_word = deconstructed_word.rotate
                end
                deconstructed_word << "ay"
            end
            piglatinized = deconstructed_word.join("")
        end
        pig_words.join(" ")
    end

end
