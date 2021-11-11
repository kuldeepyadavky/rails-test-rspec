require 'rails_helper'

RSpec.describe 'Consoles requests' do
  describe 'GET /consoles' do
    it 'returns an array of the consoles' do
      get('/consoles')
    #   response_json = JSON.parse(response.body)
      expect(response_json['consoles']).to contain_exactly(
        'NES',
        'SNES',
        'Wii',
        'Genesis',
        'Xbox',
        'Switch',
        'PS1',
        'PS2'
      )
    end

    it 'supports specifying consoles for a specific manufacturer' do
      get('/consoles', params: { manufacturer: 'Nintendo' })
    #   response_json = JSON.parse(response.body)
      expect(response_json['consoles']).to contain_exactly(
        'NES',
        'SNES',
        'Wii',
        'Switch'
      )
    end
  end
end