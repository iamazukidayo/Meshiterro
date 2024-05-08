class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

 has_many :post_images, dependent: :destroy
 #親モデルを削除する際に、その親モデルに紐づく「子モデル」も一緒に削除できる」ようになる。


end