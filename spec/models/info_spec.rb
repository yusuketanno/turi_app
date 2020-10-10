require 'rails_helper'

RSpec.describe Info , type: :model do
  before do
    @user = FactoryBot.build(:user)
    @user.created_at
    @info = FactoryBot.build(:info)
    #@info.image = fixture_file_upload("/files/dl-android.png")
  end

  describe '投稿機能' do
    context '投稿がうまくいく時' do
      it "記述に漏れがなければ投稿できる" do
        expect(@info).to be_valid
      end
    end

    context '投稿がうまくいかない時' do
      it "画像がないと投稿できない" do
        @info.image = nil
        @info.valid?
        expect(@info.errors.full_messages).to include("Image can't be blank")
      end
      it "魚名がないと投稿できない" do
        @info.fish_name = ''
        @info.valid?
        expect(@info.errors.full_messages).to include("Fish name can't be blank")
      end
      it "釣り上げた時の説明がないと投稿できない" do
        @info.text = ''
        @info.valid?
        expect(@info.errors.full_messages).to include("Text can't be blank")
      end
      it "タックルがないと投稿できない" do
        @info.tackle = ''
        @info.valid?
        expect(@info.errors.full_messages).to include("Tackle can't be blank")
      end
      it "エサがないと投稿できない" do
        @info.bait = ''
        @info.valid?
        expect(@info.errors.full_messages).to include("Bait can't be blank")
      end
    end
  end

end