ActiveAdmin.register Submission do
  menu parent: '과제 관리', label: "#{I18n.t("activerecord.models.submission")} 관리"
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :url
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :url
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :url
    end
    actions
  end
 
  
end
