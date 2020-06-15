class Project

    attr_reader :title, :backers

    def initialize(title, backers)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        Backer.new(project, self)
    end

end