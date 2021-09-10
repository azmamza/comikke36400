class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アクション・アドベンチャー' },
    { id: 3, name: 'SF・ファンタジー' },
    { id: 4, name: '恋愛' },
    { id: 5, name: 'サスペンス・ミステリー' },
    { id: 6, name: 'ホラー・サイコ' },
    { id: 7, name: 'ギャグ・コメディー' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: 'ヒューマンドラマ' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
