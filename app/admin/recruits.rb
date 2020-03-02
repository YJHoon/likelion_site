ActiveAdmin.register Recruit do
  menu parent: "모집 관리", label: "#{I18n.t("activerecord.models.recruit")} 관리"
  actions :all
  scope -> { '전체' }, :all
  scope -> { '멤버(8기)' }, :eight

  filter :member_num, as: :select, collection: Recruit.enum_selectors(:member_num), label: "#{I18n.t("activerecord.attributes.recruit.member_num")} 필터"

  index do
    selectable_column
    id_column
    tag_column :member_num do |recruit| recruit.enum_ko(:member_num) end 
    column :start_at
    column :end_at
    actions
  end

  show do
    attributes_table do
      row :member_num
      row :start_at
      row :end_at
      row :ask1_q
      row :ask2_q
      row :ask3_q
      row :ask4_q
      row :ask5_q
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :member_num, as: :select, collection: Recruit.enum_selectors(:member_num)
      f.input :start_at
      f.input :end_at
      f.input :ask1_q
      f.input :ask2_q
      f.input :ask3_q
      f.input :ask4_q
      f.input :ask5_q      

    end
    f.actions
  end
  
  
end
