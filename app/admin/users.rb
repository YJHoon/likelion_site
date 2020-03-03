ActiveAdmin.register User do
  menu parent: '사용자 관리', label: "회원"
  actions :all, except: [:destroy]

  scope :all
  scope -> { '멤버(8기)' }, :mentee
  scope -> { '운영진' }, :mentor


  batch_action "#{I18n.t("activerecord.attributes.user.role")} 변경", form: {
    '사용자 유형' => User.enum_selectors(:role).to_a
  }, confirm: '정말 해당 작업을 진행하시겠습니까?' do |ids, inputs|
    users = User.find(ids)
    users.each do |user|
      user.update(role: inputs['사용자 유형'])
    end
    flash[:notice] = '해당 리스트들의 변경을 성공적으로 완료했습니다.'
    redirect_back(fallback_location: collection_path)
  end

  batch_action "#{I18n.t("activerecord.attributes.user.mentor_type")} 변경", form: {
    '사용자 유형' => User.enum_selectors(:mentor_type).to_a
  }, confirm: '정말 해당 작업을 진행하시겠습니까?' do |ids, inputs|
    users = User.find(ids)
    users.each do |user|
      user.update(mentor_type: inputs['사용자 유형'])
    end
    flash[:notice] = '해당 리스트들의 변경을 성공적으로 완료했습니다.'
    redirect_back(fallback_location: collection_path)
  end

  filter :name_cont, label: "#{I18n.t("activerecord.attributes.user.name")} 필터"
  filter :email_cont, label: "#{I18n.t("activerecord.attributes.user.email")} 필터"
  filter :phone_cont, label: "#{I18n.t("activerecord.attributes.user.phone")} 필터"
  filter :role, as: :select, collection: User.enum_selectors(:role), label: "#{I18n.t("activerecord.attributes.user.role")} 필터"
  filter :mentor_type, as: :select, collection: User.enum_selectors(:mentor_type), label: "#{I18n.t("activerecord.attributes.user.mentor_type")} 필터"
  filter :gender, as: :select, collection: User.enum_selectors(:gender), label: "#{I18n.t("activerecord.attributes.user.gender")} 필터"
  
  index do
    selectable_column
    id_column
    column :name
    column :thumbnail do |user| image_tag(user.image_url ,style: 'width: 70px;') end
    column :email
    tag_column :role do |user| user.enum_ko(:role) end 
    actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :thumbnail do |user| image_tag(user.image_url ,style: 'width: 150px;') end
      row :role
      tag_row "운영진 역할" do |user|
        if user.mentor_type == "president"
          "회장"
        elsif user.mentor_type == "vice_president"
          "부회장"
        elsif user.mentor_type == "education"
          "교육팀"
        elsif user.mentor_type == "promotion"
          "홍보팀"
        elsif user.mentor_type == "HI_SW"
          "하소봉 회장"
        elsif user.mentor_type == "affairs"
          "총무"
        else
          "없음"
        end
      end
      row :updated_at
      row :created_at
      row :encrypted_password
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :thumbnail
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role, as: :select, collection: User.enum_selectors(:role)
      f.input :mentor_type, as: :select, collection: User.enum_selectors(:mentor_type)
    end
    actions
  end
  
end
