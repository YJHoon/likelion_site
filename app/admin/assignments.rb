ActiveAdmin.register Assignment do
  menu parent: '과제 관리', label: "#{I18n.t("activerecord.models.assignment")} 관리"
  
  actions :all

  scope -> { '전체' }, :all

  filter :title_cont, label: "#{I18n.t("activerecord.attributes.assignment.title")} 필터"
  filter :content_cont, label: "#{I18n.t("activerecord.attributes.assignment.content")} 필터"
  filter :start_at_cont, label: "#{I18n.t("activerecord.attributes.assignment.start_at")} 필터"
  filter :end_at_cont, label: "#{I18n.t("activerecord.attributes.assignment.end_at")} 필터"

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
      f.input :user
      f.input :title
      f.input :content
      f.input :start_at, as: :datetime_picker, input_html: { autocomplete: :off }
      f.input :end_at, as: :datetime_picker, required: true, input_html: { autocomplete: :off }
    end
    actions
  end
 
end
