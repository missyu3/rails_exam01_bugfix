Rails.application.routes.draw do
# エラー原因: BlogsControllerに対してblogが指定されていたから  
# 修正の意図: blogsに変更
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
