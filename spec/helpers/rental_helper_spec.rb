require 'rails_helper'

describe RentalHelper, type: :helper do
  describe '#rental_status' do
    it 'should return a green badge if scheduled' do
      rental = build(:rental, status: :scheduled)

      result = helper.rental_status(rental)

      expect(result).to include('badge badge-success')
      expect(result).to include('Agendada')
    end

    it 'should return a yellow badge if in review' do
      rental = build(:rental, status: :in_review)

      result = helper.rental_status(rental)

      expect(result).to include('badge badge-warning')
      expect(result).to include('Em revisão')
    end

    it 'should return a blue badge if ongoing' do
      rental = build(:rental, status: :ongoing)

      result = helper.rental_status(rental)

      expect(result).to include('badge badge-primary')
      expect(result).to include('Em andamento')
    end

    it 'should return a gray badge if finalized' do
      rental = build(:rental, status: :finalized)

      result = helper.rental_status(rental)

      expect(result).to include('badge badge-secondary')
      expect(result).to include('Finalizada')
    end
  end
end
