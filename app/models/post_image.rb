class PostImage < ApplicationRecord
  has_one_attached :image
   belongs_to :user
   #belongs_to :userで紐つけてる
   #PostImageモデルに関連付けられるのは一個のユーザーモデルなので、単数系のuser
end
