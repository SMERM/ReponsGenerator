module ReponsGenerator

	class ReponsFactory
	
	  NOTES=[0,1,2,3,4,5,6,7,8,9,10,11]
	  attr_reader :free_notes
	
	  def initialize()
	    set_notes
	  end
	
	  def note
	    set_notes unless self.free_notes.size > 0
	    idx = (rand()*self.free_notes.size-1).round
	    self.free_notes.delete(idx)
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
	
	  def set_notes
	    @free_notes = NOTES
	  end
	
	end

end
