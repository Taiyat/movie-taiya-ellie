class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def show
    @movie = Movie.find_by_id(params['id'])
  end

  def create
    m = Movie.new
    m.url = params['url']
    m.description = params['description']
    m.title = params['title']
    m.save 
    redirect_to "/movie/#{ m.id }"
  end
  
  def new
  end
  
  def edit
      @Movie = Movie.find_by_id(params['id'])
  end
 
  def update
    m = Movie.find_by_id(params['id'])
    m.description = params['description']
    m.url = params['url']
    m.title = params['title']
    m.save
    redirect_to "/movie/#{ m.id }"
 end
  
  def index
  end

end
    # WHY WON'T THIS WORK
    # MIGRATION PROBLEM
    # WHY

