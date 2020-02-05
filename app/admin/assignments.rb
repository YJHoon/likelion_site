ActiveAdmin.register Assignment do
  menu parent: '과제 관리', label: '과제 내용'
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :start_at
    column :end_at
    column :image
    actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :start_at
      row :end_at
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
      f.input :start_at
      f.input :end_at
      f.input :image
    end
    actions
  end
 
end
