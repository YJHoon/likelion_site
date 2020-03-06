ActiveAdmin.register Gallery do
  menu label: "#{I18n.t("activerecord.models.gallery")} 관리"

  actions :all
  scope -> { '전체' }, :all

  # filter :attribute_blank
  filter :tags, label: "태그 필터" do |tag|
    tag
  end

  index do
    selectable_column
    id_column
    column :image do |gallery| image_tag(gallery.image_url, class: 'admin-showImage imageviewer') end
    column "태그" do |gallery|
      gallery.tags do |tag|
        tag.name
      end
    end
    actions
  end

  show do
    attributes_table do
      row :image do |gallery| image_tag(gallery.image_url, class: 'admin-showImage imageviewer') end
      row :user
      row :tag_list
      row :updated_at
      row :created_at
    end
  end

  form do |f|
    f.inputs do
      f.input :user
      f.input :image
      f.input :tag_list
    end
    f.actions
  end
  
  
end
