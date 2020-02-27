ActiveAdmin.register Apply do
  menu parent: "모집 관리", label: "#{I18n.t("activerecord.models.apply")} 관리"
  actions :all
  scope -> { '전체' }, :all

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :major
    column :student_id
    column :grade
    actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :phone
      row :major
      row :student_id
      row :grade
      row :ask1_a
      row :ask2_a
      row :ask3_a
      row :ask4_a
      row :ask5_a
      row :ask5_file
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :phone
      f.input :major
      f.input :student_id
      f.input :grade
      f.input :ask1_a
      f.input :ask2_a
      f.input :ask3_a
      f.input :ask4_a
      f.input :ask5_a
      f.input :ask5_file
    end
    f.actions
  end
  
  
end
