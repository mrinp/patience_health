class SurgeryDateDetailsController < ApplicationController
  before_action :current_user_must_be_surgery_date_detail_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_surgery_date_detail_user
    surgery_date_detail = SurgeryDateDetail.find(params[:id])

    unless current_user == surgery_date_detail.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @surgery_date_details = current_user.surgery_date_detail.page(params[:page])

    render("surgery_date_details/index.html.erb")
  end

  def show
    @surgery_date_detail = SurgeryDateDetail.find(params[:id])

    render("surgery_date_details/show.html.erb")
  end

  def new
    @surgery_date_detail = SurgeryDateDetail.new

    render("surgery_date_details/new.html.erb")
  end

  def create
    @surgery_date_detail = SurgeryDateDetail.new

    @surgery_date_detail.user = params[:user]
    @surgery_date_detail.date_of_surgery = params[:date_of_surgery]
    @surgery_date_detail.surgeon = params[:surgeon]
    @surgery_date_detail.primary_physician = params[:primary_physician]
    @surgery_date_detail.location = params[:location]
    @surgery_date_detail.type_of_surgery = params[:type_of_surgery]

    save_status = @surgery_date_detail.save

    if save_status == true
      redirect_to(:back, :notice => "Surgery date detail created successfully.")
    else
      render("surgery_date_details/new.html.erb")
    end
  end

  def edit
    @surgery_date_detail = SurgeryDateDetail.find(params[:id])

    render("surgery_date_details/edit.html.erb")
  end

  def update
    @surgery_date_detail = SurgeryDateDetail.find(params[:id])

    @surgery_date_detail.user = params[:user]
    @surgery_date_detail.date_of_surgery = params[:date_of_surgery]
    @surgery_date_detail.surgeon = params[:surgeon]
    @surgery_date_detail.primary_physician = params[:primary_physician]
    @surgery_date_detail.location = params[:location]
    @surgery_date_detail.type_of_surgery = params[:type_of_surgery]

    save_status = @surgery_date_detail.save

    if save_status == true
      redirect_to(:back, :notice => "Surgery date detail updated successfully.")
    else
      render("surgery_date_details/edit.html.erb")
    end
  end

  def destroy
    @surgery_date_detail = SurgeryDateDetail.find(params[:id])

    @surgery_date_detail.destroy

    if URI(request.referer).path == "/surgery_date_details/#{@surgery_date_detail.id}"
      redirect_to("/", :notice => "Surgery date detail deleted.")
    else
      redirect_to(:back, :notice => "Surgery date detail deleted.")
    end
  end
end
