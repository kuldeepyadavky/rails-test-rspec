require 'rails_helper'


RSpec.describe "Status requests" do
    describe "Get /api/status" do
        it 'returns a status message' do
            get('/api/status')
            json = JSON.parse(response.body)
            expect(json['status']).to eql('ok')
            expect(response.status).to eql(200)
        end
    end
end
