require 'rails_helper'

describe 'ユーザー登録機能', type: :system do 
    context '正常にユーザー登録ができる'do
        before do 
            visit new_user_path
            fill_in '名前', with: 'a@example.com'
            fill_in 'パスワード', with: '8823'
            click_button '登録する'

        end

        it 'ユーザー一覧画面へ遷移' do 
            expect(page).to have_content 'ユーザー一覧'
        end
    end

    context ' ユーザー登録ができない'
    before do 
        visit new_user_path
        fill_in '名前', with: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
        fill_in 'パスワード', with: 'aaaaaaaaaaaaaaaaaaaaaaaa'
        click_button '登録する'
    end

    it '画面繊維しない' do 
        expect(page).to have_content 'ユーザー登録'
    end
end

    