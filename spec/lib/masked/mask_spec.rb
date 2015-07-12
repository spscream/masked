require 'spec_helper'
require 'masked'

describe Masked::Mask do
  describe '#mask' do
    subject { Masked::Mask }
    describe 'mask is @@@' do
      let (:mask) { subject.new '@@@' }
      it 'returns 5432 for 5432 number' do
        expect(mask.mask('5432')).to eq '5432'
      end
    end

    describe 'mask is @-@@' do
      let (:mask) { subject.new '@-@@' }
      context '5432 on input' do
        it 'returns 5-432' do
          expect(mask.mask('5432')).to eq '5-432'
        end
      end

      context '@432 on input' do
        it 'returns @-432' do
          expect(mask.mask('@432')).to eq '@-432'
        end
      end
    end

    describe 'mask is POC@@-@@-@@@' do
      let (:mask) { subject.new 'POC@@-@@-@@@' }
      context '5432 on input' do
        it 'returns POC54-32' do
          expect(mask.mask('5432')).to eq 'POC54-32'
        end
      end

      context '42 on input' do
        it 'returns POC42' do
          expect(mask.mask('42')).to eq 'POC42'
        end
      end
    end

    describe 'mask is @-@@-TAIL' do
      let (:mask) { subject.new '@-@@-TAIL' }
      context '5432 on input' do
        it 'returns 5-43-TAIL2' do
          expect(mask.mask('5432')).to eq '5-43-TAIL2'
        end
      end
    end

    describe 'mask is @-@@-@@@@@@@@@-TAIL' do
      let (:mask) { subject.new '@-@@-@@@@@@@@@-TAIL' }
      context '5432 on input' do
        it 'returns 5-43-2-TAIL' do
          expect(mask.mask('5432')).to eq '5-43-2-TAIL'
        end
      end

      context '54 on input' do
        it 'returns 5-4-TAIL' do
          expect(mask.mask('54')).to eq '5-4-TAIL'
        end
      end
    end
  end
end