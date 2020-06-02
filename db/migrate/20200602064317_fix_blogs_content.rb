class FixBlogsContent < ActiveRecord::Migration[5.2]
  def change
    # エラー原因: コンテンツの型がIntegerなので、数値しか登録されない
    # 修正の意図: 文章を登録したいので、型をStringに変更する
    Blog.destroy_all
    change_column :blogs, :content, :string
  end
end
