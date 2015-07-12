require 'masked/mask'

module Masked
  module ViewHelpers
    def masked(mask, input)
      Mask.new(mask).mask(input)
    end
  end
end