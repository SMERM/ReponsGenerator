module ReponsGenerator

  class Row
  
    attr_reader :orig_row
  
    def initialize(r = nil)
      if r
        @orig_row = r
      else
        build_row
      end
    end
  
    def transpo(t = nil)
      t = (rand()*22-11).round unless t
      self.orig_row.map{ |n| (n+t)%12 }
    end
  
  private
  
    NOTES=[0,1,2,3,4,5,6,7,8,9,10,11]
  
    def build_row
      fn = NOTES.dup
      @orig_row = []
      while (!fn.empty?)
        idx = (rand()*(fn.size-1)).round
        @orig_row << fn.delete_at(idx)
      end
    end
  
  end

end
