class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    #GALLERY ROUTE

    #Gallery Index
   
    
    if req.path == ('/galleries') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Gallery.all.to_json]]
    end
    #Gallery Create

    #Gallery Show
    
    #Gallery Update

    #Gallery Delete

    # Static route to test rack
    if req.path.match(/test/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    else
      res.write "Path Not Found"

    end

    res.finish
  end

end
