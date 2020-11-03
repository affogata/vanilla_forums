RSpec.describe VanillaForums do
  describe "#config" do
    it "should accept url and access token as configuration" do
      VanillaForums.config do |c|
        c.url "http://my.forum.com"
        c.access_token "123123123"
      end

      expect(VanillaForums.url).to eq("http://my.forum.com")
      expect(VanillaForums.access_token).to eq('123123123')
    end
  end
end
