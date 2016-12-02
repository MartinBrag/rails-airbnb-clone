class PagesController < ApplicationController
<<<<<<< HEAD
  # skip_before_action :authenticate_user!, only: :home
=======
  skip_before_action :authenticate_user!, only: :home, raise: false
>>>>>>> master

  def home
  end
end
