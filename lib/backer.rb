class Backer

    attr_reader :name, :backed_projects

    def initialize(name, backed_projects)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        Project.new(project, self)
    end

end