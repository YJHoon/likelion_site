ActiveAdmin.register Recruit do
  menu label: "#{I18n.t("activerecord.models.recruit")} 관리"
  actions :all, except: [:destroy]
  scope -> { '전체' }, :all
  scope -> { '멤버(8기)' }, :eight

  filter :member_num, as: :select, collection: Recruit.enum_selectors(:member_num), label: "#{I18n.t("activerecord.attributes.recruit.member_num")} 필터"

  index do
    selectable_column
    id_column
    tag_column :member_num do |recruit| recruit.enum_ko(:member_num) end 
    column :start_at
    column :end_at
    actions do |a|
      link_to '지원서 리스트', admin_recruit_applies_path(a)
    end
  end

  show do
    recruit = Recruit.find(params[:id])
    attributes_table do
      row :member_num, label: "#{I18n.t("activerecord.attributes.recruit.member_num")}"
      row :start_at
      row :end_at
      if recruit.ask1_q.present?
        row :ask1_q
        row :ask1_type
        if recruit.ask1_type == "choice" || recruit.ask1_type == "multi_choice"
          row :ask1_choices
        end
      end
      if recruit.ask2_q.present?
        row :ask2_q
        row :ask2_type
        if recruit.ask2_type == "choice" || recruit.ask2_type == "multi_choice"
          row :ask2_choices
        end
      end
      if recruit.ask3_q.present?
        row :ask3_q
        row :ask3_type
        if recruit.ask3_type == "choice" || recruit.ask3_type == "multi_choice"
          row :ask3_choices
        end
      end
      if recruit.ask4_q.present?
        row :ask4_q
        row :ask4_type
        if recruit.ask4_type == "choice" || recruit.ask4_type == "multi_choice"
          row :ask4_choices
        end
      end
      if recruit.ask5_q.present?
        row :ask5_q
        row :ask5_type
        if recruit.ask5_type == "choice" || recruit.ask5_type == "multi_choice"
          row :ask5_choices
        end
      end
      if recruit.ask6_q.present?
        row :ask6_q
        row :ask6_type
        if recruit.ask6_type == "choice" || recruit.ask6_type == "multi_choice"
          row :ask6_choices
        end
      end
      if recruit.ask7_q.present?
        row :ask7_q
        row :ask7_type
        if recruit.ask7_type == "choice" || recruit.ask7_type == "multi_choice"
          row :ask7_choices
        end
      end
      if recruit.ask8_q.present?
        row :ask8_q
        row :ask8_type
        if recruit.ask8_type == "choice" || recruit.ask8_type == "multi_choice"
          row :ask8_choices
        end
      end
      if recruit.ask9_q.present?
        row :ask9_q
        row :ask9_type
        if recruit.ask9_type == "choice" || recruit.ask9_type == "multi_choice"
          row :ask9_choices
        end
      end
      if recruit.ask10_q.present?
        row :ask10_q
        row :ask10_type
        if recruit.ask10_type == "choice" || recruit.ask10_type == "multi_choice"
          row :ask10_choices
        end
      end
      row :additional1_q if recruit.additional1_q.present?
      row :additional2_q if recruit.additional2_q.present?
      row :additional3_q if recruit.additional3_q.present?
      row :updated_at
      row :created_at
    end
  end


  type_select = [["텍스트", "text"], ["단수선택 객관식", "choice"], ["복수선택 객관식", "multi_choice"], ["파일업로드", "file"]]

  
  form do |f|
    f.inputs do
      f.input :member_num, as: :select, collection: Recruit.enum_selectors(:member_num)
      f.input :start_at, as: :datetime_picker, input_html: { autocomplete: :off }
      f.input :end_at, as: :datetime_picker, input_html: { autocomplete: :off }

      f.input :ask1_type, as: :select, input_html: { class: "ask_type", data: {id: 1} }, collection: type_select
      f.input :ask1_q
      f.input :ask1_choices, label: "질문1 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask2_type, as: :select, input_html: { class: "ask_type", data: {id: 2} }, collection: type_select
      f.input :ask2_q
      f.input :ask2_choices, label: "질문2 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask3_type, as: :select, input_html: { class: "ask_type", data: {id: 3} }, collection: type_select
      f.input :ask3_q
      f.input :ask3_choices, label: "질문3 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask4_type, as: :select, input_html: { class: "ask_type", data: {id: 4} }, collection: type_select
      f.input :ask4_q
      f.input :ask4_choices, label: "질문4 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask5_type, as: :select, input_html: { class: "ask_type", data: {id: 5} }, collection: type_select
      f.input :ask5_q
      f.input :ask5_choices, label: "질문5 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask6_type, as: :select, input_html: { class: "ask_type", data: {id: 6} }, collection: type_select
      f.input :ask6_q
      f.input :ask6_choices, label: "질문6 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask7_type, as: :select, input_html: { class: "ask_type", data: {id: 7} }, collection: type_select
      f.input :ask7_q
      f.input :ask7_choices, label: "질문7 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask8_type, as: :select, input_html: { class: "ask_type", data: {id: 8} }, collection: type_select
      f.input :ask8_q
      f.input :ask8_choices, label: "질문8 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask9_type, as: :select, input_html: { class: "ask_type", data: {id: 9} }, collection: type_select
      f.input :ask9_q
      f.input :ask9_choices, label: "질문9 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :ask10_type, as: :select, input_html: { class: "ask_type", data: {id: 10} }, collection: type_select
      f.input :ask10_q
      f.input :ask10_choices, label: "질문10 객관식 옵션( '/' 로 질문을 구분해주세요 ex: '동대 멋사/장고/기타 등등')"

      f.input :additional1_q
      f.input :additional2_q
      f.input :additional3_q
    end
    f.actions
  end
  
  
end
