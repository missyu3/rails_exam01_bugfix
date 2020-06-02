class Blog < ApplicationRecord
# エラー原因: Viewなどで参照している際に複数形で指定されていた
# 修正の意図: has_manyなので複数形の方が自然なので、こちらを修正
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
