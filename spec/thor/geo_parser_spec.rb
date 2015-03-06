require '../spec_helper'
require '../../lib/thor/geo_parser'

describe GeoParser do
  describe 'class methods' do
    describe 'parse_subdomains' do
      let(:html) { File.open("assets/geo_page.html", "rb").read }

      it 'returns a list' do
        expect(GeoParser.parse_subdomains(html)).to be_a_kind_of(Array)
      end

      it 'includes subdomains that are in the page it is parsing' do
        expect(GeoParser.parse_subdomains html).to include('sfbay')
        expect(GeoParser.parse_subdomains html).to include('orangecounty')
      end

      it 'does not err when there is nothing passed to it' do
        expect(GeoParser.parse_subdomains '').to eq([])
      end
    end
  end
end
