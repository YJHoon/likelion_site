ActiveAdmin.register Assignment do
  menu label: "#{I18n.t("activerecord.models.assignment")} 관리"
  
  actions :all, except: [:destroy]
  batch_action :destroy, confirm: '정말 해당 작업을 진행하시겠습니까?' do |ids|
    flash[:notice] = '해당 리스트들의 삭제를 성공적으로 완료했습니다.'
    assignments = Assignment.find(ids)
    assignments.each do |assignment|
      assignment.destroy
    end
    redirect_back(fallback_location: collection_path)
  end

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
    column "제출 수" do |a|
      a.submissions.count
    end
    column "미제출자 (종료 15시간전)" do |a|
      if ((a.end_at - Time.zone.now)/1.hour).to_i <= 15
        users = a.not_submitted_users
        if users.present?
          (users.map {|user| user.name}).join(', ')
        end
      end
    end
    actions do |a|
      link_to '제출 리스트', admin_assignment_submissions_path(a)
    end
  end

  show do
    attributes_table do
      row :title
      row :content
      row :start_at
      row :end_at
      row :updated_at
      row :created_at
    end
  end

  form do |f|
    f.inputs do
      f.input :user
      f.input :title
      f.input :content, as: :quill_editor, input_html: {data: {options: {modules: {toolbar: [[ 'header': [1, 2, 3, false] ],
        ['color': []], ['background': []],
        ['bold', 'italic', 'underline', 'strike'],
        ['image', 'blockquote', 'code-block'],
        [{ 'list': 'ordered'}, { 'list': 'bullet' }],
        [{ 'indent': '-1'}, { 'indent': '+1' }],
        ['clean']]}, placeholder: '내용을 입력해주세요...', theme: 'snow'}}}
      f.input :start_at, as: :datetime_picker, input_html: { autocomplete: :off }
      f.input :end_at, as: :datetime_picker, required: true, input_html: { autocomplete: :off }
    end
    actions
  end
 
end
