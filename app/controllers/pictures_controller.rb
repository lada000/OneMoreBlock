class PicturesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]
  load_and_authorize_resource
end
