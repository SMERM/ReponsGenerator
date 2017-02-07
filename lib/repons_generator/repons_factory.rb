module ReponsGenerator

	class ReponsFactory

	  attr_reader :row, :index

	  def initialize()
	    @row = Row.new
			@index = 0
	  end

	  def note
			self.row[self.index]
			bump_index
	  end


	  def repons_chord

	  end

	  def repons_note

	  end

	  def repons_long

	  end

	  def repons_acciaccatura

	  end


	private

	  def bump_index
	    @index += 1
			@index %= 12
	  end

	end

end
