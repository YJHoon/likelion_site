ActiveAdmin.register Submission do
  menu parent: '과제 관리', label: '제출'
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :submission_url
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :submission_url
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :submission_url
    end
    actions
  end
 
  
end
