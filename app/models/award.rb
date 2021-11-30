class Award
    attr_accessor :name, :image_url

    def self.generate
        types = ['Star', 'Cross', 'Circle', 'Rhombus']
        page = Wikipedia.find_random
        page.image_urls.first
        award = new()
        award.name = page.title
        award.image_url = page.image_urls.first
    end
end