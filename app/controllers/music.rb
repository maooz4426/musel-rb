Musel::App.controllers :music do
  get :index do
    @musics = Music.all
    render 'music/index'
  end

  get :create do
    render 'music/new'
  end
end
