ActiveAdmin.register Apply do
  belongs_to :recruit

  actions :all
  
  scope -> { '전체' }, :all

  filter :name_cont, label: "#{I18n.t("activerecord.attributes.apply.name")} 필터"
  filter :email_cont, label: "#{I18n.t("activerecord.attributes.apply.email")} 필터"
  filter :phone_cont, label: "#{I18n.t("activerecord.attributes.apply.phone")} 필터"
  filter :major_cont, label: "#{I18n.t("activerecord.attributes.apply.major")} 필터"
  filter :student_id_cont, label: "#{I18n.t("activerecord.attributes.apply.student_id")} 필터"
  filter :grade_cont, label: "#{I18n.t("activerecord.attributes.apply.grade")} 필터"

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
    apply = Apply.find(params[:id])
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
      row :ask5_file do
        link_to "#{apply.ask5_file.file.original_filename}", apply.ask5_file.url, download: "#{apply.ask5_file.file.original_filename}"
      end
      row :updated_at
      row :created_at
    end
  end

  form do |f|
    f.inputs do
      f.input :recruit
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
