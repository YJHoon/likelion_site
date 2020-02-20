ActiveAdmin.register Lecture do
  menu label: "#{I18n.t("activerecord.models.lecture")} 관리"
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :image
    actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :image
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :content
      f.input :image
    end
    actions
  end
  
  
end
