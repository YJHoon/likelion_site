ActiveAdmin.register Submission do
  belongs_to :assignment
  # menu parent: '과제 관리', label: "#{I18n.t("activerecord.models.submission")} 관리"
  actions :all
  
  scope -> { '전체' }, :all
  scope -> { '우수' }, :great
  scope -> { '아이디어' }, :idea

  filter :title_cont, label: "#{I18n.t("activerecord.attributes.submission.title")} 필터"
  filter :description_cont, label: "#{I18n.t("activerecord.attributes.submission.description")} 필터"
  filter :grade, as: :select, collection: Submission.enum_selectors(:grade), label: "#{I18n.t("activerecord.attributes.submission.grade")} 필터"

  index do
    selectable_column
    id_column
    column :user
    column :title
    tag_column :grade, interactive: true 

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
      row :url
      row :description
      row :file do |submission|
        link_to "#{submission.file.file.original_filename}", submission.file.url, download: "#{submission.file.file.original_filename}" if submission.file.present?
      end
      tag_row "과제 등급" do |submission|
        submission.enum_ko(:grade)
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
      f.input :description, rows: 10
      f.input :file
      f.input :url
      f.input :grade, as: :select, collection: Submission.enum_selectors(:grade)
    end
    actions
  end
 
  
end
