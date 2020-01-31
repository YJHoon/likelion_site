ActiveAdmin.register Assignment do
  menu parent: '과제 관리', label: '과제 내용'
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :title
    column :content
    column :submit_time
    column :assignment_image
    actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :submit_time
      row :assignment_image
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :content
      f.input :submit_time
      f.input :assignment_image
    end
    actions
  end
 
end
