ActiveAdmin.register Lecture do
  menu label: "#{I18n.t("activerecord.models.lecture")} 관리"
  actions :all
  scope -> { '전체' }, :all

  permit_params :file

  index do
    selectable_column
    id_column
    column :title
    column :image
    actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :image
      row :file
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :content, as: :quill_editor, input_html: {data: {options: {modules: {toolbar: [[ 'header': [1, 2, 3, false] ],
        ['color': []], ['background': []],
        ['bold', 'italic', 'underline', 'strike'],
        ['image', 'blockquote', 'code-block'],
        [{ 'list': 'ordered'}, { 'list': 'bullet' }],
        [{ 'indent': '-1'}, { 'indent': '+1' }],
        ['clean']]}, placeholder: '내용을 입력해주세요...', theme: 'snow'}}}
      f.input :file, as: :file
    end
    f.actions
  end
  
  
end
