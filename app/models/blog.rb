class Blog < ApplicationRecord
# エラー原因: Viewなどで参照している際に複数形で指定されていた
# 修正の意図: has_manyなので複数形の方が自然なので、こちらを修正
# エラー原因: ブログが消されても、コメントが残ってしまっている
# 修正の意図: ゴミデータを残さないためにブログが消されたら紐づくコメントも削除する
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
end
