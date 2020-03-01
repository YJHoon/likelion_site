ActiveAdmin.register Assignment do
  menu parent: '과제 관리', label: "#{I18n.t("activerecord.models.assignment")} 관리"
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :start_at
    column :end_at
    actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :start_at
      row :end_at
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :content
      f.input :start_at
      f.input :end_at
    end
    f.actions
  end
 
end
