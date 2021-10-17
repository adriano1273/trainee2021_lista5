class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :registration, :email, :birth, :profile_pic_url

  def profile_pic_url
    if object.profile_pic.attached?
      Rails.application.routes.url_helpers.rails_blob_path(object.profile_pic, only_path: true)
    else
      "este usuário não possui foto de perfil"
    end
  end

end
