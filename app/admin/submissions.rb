ActiveAdmin.register Submission do
  belongs_to :assignment
  # menu parent: '과제 관리', label: "#{I18n.t("activerecord.models.submission")} 관리"
  actions :all
  
  scope -> { '전체' }, :all
  scope -> { '우수' }, :great
  scope -> { '아이디어' }, :idea

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

  filter :title_cont, label: "#{I18n.t("activerecord.attributes.submission.title")} 필터"
  filter :description_cont, label: "#{I18n.t("activerecord.attributes.submission.description")} 필터"
  filter :grade, as: :select, collection: Submission.enum_selectors(:grade), label: "#{I18n.t("activerecord.attributes.submission.grade")} 필터"

  index do
    selectable_column
    id_column
    column :title
    column :url
    tag_column :grade do |submission| submission.enum_ko(:grade) end 
    column "URL" do |s|
      if s.url.present?
        if s.url.include?('http')
          link_to "#{s.url}", s.url, target: "_blank"
        else
          link_to "#{s.url}", "http://" + s.url, target: "_blank"
        end
      end
    end
    column "댓글 수" do |s|
      s.comments.count
    end
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
    end
  end

  form do |f|
    f.inputs do
      f.input :assignment
      f.input :user
      f.input :title
      f.input :description
      f.input :url
      f.input :grade, as: :select, collection: Submission.enum_selectors(:grade)
    end
    actions
  end
 
  
end
