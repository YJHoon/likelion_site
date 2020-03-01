ActiveAdmin.register Submission do
  menu parent: '과제 관리', label: "#{I18n.t("activerecord.models.submission")} 관리"
  actions :all
  scope -> { '전체' }, :all

  batch_action "#{I18n.t("activerecord.attributes.submission.grade")} 변경", form: {
    '사용자 유형' => Submission.enum_selectors(:grade).to_a
  }, confirm: '정말 해당 작업을 진행하시겠습니까?' do |ids, inputs|
    submissions = Submission.find(ids)
    submissions.each do |submission|
      submission.update(grade: inputs['사용자 유형'])
    end
    flash[:notice] = '해당 리스트들의 변경을 성공적으로 완료했습니다.'
    redirect_back(fallback_location: collection_path)
  end


  index do
    selectable_column
    id_column
    column :title
    column :description
    column :url
    tag_column :grade do |submission| submission.enum_ko(:grade) end 
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :url
      tag_row "과제 등급" do |submission|
        if submission.grade == "normal"
          "노말"
        elsif submission.grade == "idea"
          "아이디어"
        else
          "우수"
        end
      end
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
      f.input :grade, as: :select, collection: Submission.enum_selectors(:grade)
    end
    actions
  end
 
  
end
