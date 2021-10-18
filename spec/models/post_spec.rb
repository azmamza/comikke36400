require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '投稿機能の実装' do
    before do
      @post = FactoryBot.build(:post)
    end

    context '投稿ができる場合' do
      it '全ての情報が存在すれば投稿できること' do
        expect(@post).to be_valid
      end
    end

    
    context '投稿ができない場合' do
      it 'nameが空では投稿できないこと' do
        @post.name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Name can't be blank")
      end

      it 'genre_idが１の選択肢を選択すると投稿できないこと' do
        @post.genre_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include("Genre can't be blank")
      end

      it 'ratingが空では投稿できないこと' do
        @post.rating = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Rating can't be blank")
      end

      it 'ユーザーが紐付いていなければ投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end
end
