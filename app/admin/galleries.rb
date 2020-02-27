ActiveAdmin.register Gallery do
  menu label: "#{I18n.t("activerecord.models.gallery")} 관리"
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :image do |gallery| image_tag(gallery.image_url ,style: 'width: 70px;') end
    actions
  end

  show do
    attributes_table do
      row :image do |gallery| image_tag(gallery.image_url ,style: 'width: 70px;') end
      row :user
      row :tag_list
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :image
      f.input :tag_list
    end
    actions
  end
  
  
end
