class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :name, :teacher_id, :docs_url

  def docs_url
    if object.docs.attached?
      array = []
      object.docs.each do |i|
        array.append(Rails.application.routes.url_helpers.rails_blob_path(i, only_path: true))
      end
      return array
    else
      "esta linguagem não possui documentação"
    end
  end

end
