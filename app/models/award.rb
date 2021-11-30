class Award
    attr_accessor :name, :image_url, :type, :color

    def self.generate
        types = ['Star', 'Cross', 'Circle', 'Rhombus']
        colors = ['Gold', 'Silver', 'Bronze', 'Purple']
        page = Wikipedia.find_random
        page.image_urls&.first
        award = new()
        award.name = page.title
        award.image_url = page.image_urls.first
        award.type = types.sample
        award.color = colors.sample
        award
    end
end
