module Masked
  class Mask
    def initialize(mask)
      @mask = mask
    end

    def mask(input)
      _apply_mask(input)
    end

    private
    def _apply_mask(input)
      i = input.each_char()
      result = @mask.gsub('@') { _get_next(i) }
      while c = _get_next(i)
        result += c
      end
      result.gsub!(/-+$/,'')
      result.gsub!(/--/,'-')
      result
    end

    def _get_next(i)
      begin
        i.next()
      rescue StopIteration
      end
    end
  end
end