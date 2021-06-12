class ProjectsController < ApplicationController
    before_action :read_projects
    def index
        #show all of the resources  
       
    end

    def show
        #show 1 of the resources
        
        @project = @projects.find do |project| 
            project[:id] ==params[:id].to_i
        end
    end

    def new
       #to have a from that allows to create a new resources 
    end

    private
    def read_projects
        @projects = [
            { 
                id: 1,
                name: "terminal app",
                github_status: true,
                date_completed: "17/08/2020"
            },
            {   id: 2,
                name: "react app",
                github_status: false,
                date_completed: "20/10/2020"
            }
        ]
    end

end