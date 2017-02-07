require 'singleton'
module ReponsGenerator

	# un oggetto +Note+ è composto da un oggetto +Acciaccatura+
	# e un oggetto +LongNote+
	# un oggetto +Chord+ è composto da un array di oggetti +Note+

	class ReponsFactory

		include Singleton 

	  attr_reader :row, :index

	  def initialize()
	    @row = Row.new
			@index = 0
	  end

	  def next_note
			self.row[self.index]
			bump_index
	  end

	  def chord

	  end

		def note

		end

	  def long_note

	  end

	  def acciaccatura

	  end


	private

	  def bump_index
	    @index += 1
			@index %= 12
	  end

	end

end
