class AttachmentsController < ApplicationController

  def create
    @attachment = Attachment.create(create_params)
    course_id = @attachment.course_id

    if @attachment.save
      redirect_to '/courses/' + course_id.to_s + '/show'
    else
      render :new
    end
  end

  def download

  end

  private

  def create_params
    params.require(:attachment).permit(:attachment_path, :course_id)
  end


end