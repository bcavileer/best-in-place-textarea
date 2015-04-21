BipSample::Application.routes.draw do

  resource :examples

  root to: 'application#index'
end
