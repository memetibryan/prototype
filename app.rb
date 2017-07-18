require("bundler/setup")
  Bundler.require(:default)
  also_reload("lib/**/*.rb")

  Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file } #loading individual files when required

  #loads first web page 'index'
  get("/") do
    erb(:index)
  end

  # redirect code
  # post ('/clients')
  #   @new_client = Client.new(params.fetch("namme"))
  #   if @new_client.save()
  #     redirect("/clients/".concat(@new_client.id().to_s()))
  #   else
  #     erb(:index)
  #   end
  # end

  # get('/clients/:id') do
  #   @client = Client.find(params.fetch("id").to_i())
  #   erb(:client)
  # # end

  # delete('/tasks/:id') do
  #   @task = Task.find(params.fetch("id").to_i()
  #   if @task.destroy()
  #     redirect("/tasks")
  #   else
  #     erb(:task)
  #   end
  # end