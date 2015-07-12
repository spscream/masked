require 'spec_helper'
require 'masked/view_helpers'

describe Masked::ViewHelpers do
  before(:each) do
    @dummy = Object.new
    @dummy.extend(Masked::ViewHelpers)
  end

  describe '#masked' do
    describe 'mask is @@@ and input is 5432' do
      it 'returns 5432' do
        expect(@dummy.masked  ('@@@', '5432')).to eq '5432'
      end
    end
  end
end