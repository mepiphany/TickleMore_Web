class Api::V1::BreadcrumbsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @breadcrumbs = Breadcrumb.all
    @breadcrumb_sum = Breadcrumb.all.sum(:cash_value)
  end

  def create
    @breadcrumb = Breadcrumb.new(breadcrumb_params)

    respond_to do |format|
      if @breadcrumb.save
        format.html {render :html => @post, status: :created}
        format.json {render :json => @post, status: :created}
      else
        format.html {render :html => @post, status: :created}
        format.json {render :json => @post, status: :created}
      end

    end


  end

  private

  def breadcrumb_params
    params.require(:breadcrumb).permit([:title, :cash_value, :view, :cash_wallet])
  end
end
