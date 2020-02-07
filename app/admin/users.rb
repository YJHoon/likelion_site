ActiveAdmin.register User do
  menu parent: '사용자 관리', label: "회원"
  actions :all

  scope :all
  scope -> { '회원' }, :default
  scope -> { '멤버(7기)' }, :mentee
  scope -> { '운영진' }, :mentor


  batch_action '인증상태 변경', form: {
    state: User::CERTIFICATION_STATES
  } do |ids, inputs|
    users = User.find(ids)
    users.each do |user|
      user.update!(certification_state: inputs[:state])
    end
    flash[:notice] = "해당 사용자(들)의 인증이 성공적으로 처리 되었습니다."
    redirect_back(fallback_location: collection_path)
  end
  
  index do
    selectable_column
    id_column
    column :name
    column :thumbnail do |obj|
      link_to(image_tag(obj.thumbnail.url, style: "width: 100px"), obj.thumbnail.url, target: :_blank) if obj.thumbnail?
    end
    column :email
    tag_column :role, interactive: true
    actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :thumbnail
      row :role
      row :mentor_type
      tag_row "운영진 역할" do |user|
        if user.mentor_type == "not_choose"
          "선택안함"
        elsif user.mentor_type == "man"
          "남자"
        elsif user.mentor_type == "woman"
          "여자"
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
      f.input :role
      f.input :mentor_type
    end
    actions
  end
  
end
