ActiveAdmin.register Movie do
  permit_params :category, :title, :url
end
