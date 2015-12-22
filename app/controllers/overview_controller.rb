class OverviewController < ApplicationController
  layout "after_login", only: [:dashboard]

  def dashboard

  end

end
