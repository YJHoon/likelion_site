# ActiveAdmin.register Comment do
#   menu parent: '댓글 관리', label: '댓글'
#   actions :all
#   scope -> { '전체' }, :all

#   index do
#     selectable_column
#     id_column
#     column :commentable_type
#     column :body
#     actions
#   end

#   show do
#     attributes_table do
#       row :commentable_type
#       row :body
#       row :updated_at
#       row :created_at
#       row :encrypted_password
#     end
#   end

#   form do |f|
#     f.inputs do
#       f.input :commentable_type
#       f.input :body
#     end
#     actions
#   end
 
  
# end
