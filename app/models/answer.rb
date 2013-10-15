class Answer < ActiveRecord::Base
	has_one :question

	def interpret(against)
	
		case against
			when true
				if self.text.include? "Ja" or self.text.include? 'Jau' or self.text.include? "jap" or self.text.include? "gut" or self.text.include? "yes"
					Rails.logger.debug("Habe gechecked Ergebnis: Positiv: true !!! ---------------- ---------------- ---------------- ---------------- ----------------")
					return 1
				else
					Rails.logger.debug("Habe gechecked Ergebnis: Positiv: false !!! ---------------- ---------------- ---------------- ---------------- ----------------")
					return 0
				end
			when false
				if self.text.include? "kein" or self.text.include? 'nein' or self.text.include? "nicht" or self.text.include? "schlecht" or self.text.include? "no"
					Rails.logger.debug("Habe gechecked Ergebnis: Negativ: true !!! ---------------- ---------------- ---------------- ---------------- ----------------")
					return 1
				else
					Rails.logger.debug("Habe gechecked Ergebnis: Negativ: false !!! ---------------- ---------------- ---------------- ---------------- ----------------")
					return 0
				end
			else
				return nil
		end
	end
end
