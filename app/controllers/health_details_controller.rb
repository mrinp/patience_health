class HealthDetailsController < ApplicationController
  def index
    @health_details = HealthDetail.page(params[:page])

    render("health_details/index.html.erb")
  end

  def show
    @health_detail = HealthDetail.find(params[:id])

    render("health_details/show.html.erb")
  end

  def new
    @health_detail = HealthDetail.new

    render("health_details/new.html.erb")
  end

  def create
    @health_detail = HealthDetail.new


    save_status = @health_detail.save

    if save_status == true
      redirect_to(:back, :notice => "Health detail created successfully.")
    else
      render("health_details/new.html.erb")
    end
  end

  def edit
    @health_detail = HealthDetail.find(params[:id])

    render("health_details/edit.html.erb")
  end

  def update
    @health_detail = HealthDetail.find(params[:id])


    save_status = @health_detail.save

    if save_status == true
      redirect_to(:back, :notice => "Health detail updated successfully.")
    else
      render("health_details/edit.html.erb")
    end
  end

  def destroy
    @health_detail = HealthDetail.find(params[:id])

    @health_detail.destroy

    if URI(request.referer).path == "/health_details/#{@health_detail.id}"
      redirect_to("/", :notice => "Health detail deleted.")
    else
      redirect_to(:back, :notice => "Health detail deleted.")
    end
  end
end
