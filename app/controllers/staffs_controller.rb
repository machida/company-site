class StaffsController < ApplicationController
  before_filter :authenticate_staff!
  layout "staffs_application"

  def update
    @staff.skip_reconfirmation! # メールアドレス変更確認しない
    result = if current_staff.id == @staff.id
               # 自身の更新ならパスワード入力を求める
               @staff.update_with_password(staff_params)
             else
               @staff.update(staff_params)
             end
    if result
      # パスワード変更でログアウトするのを防ぐ
      sign_in(@staff, bypass: true) if current_staff.id == @staff.id
      redirect_to staff_path(@staff), notice: '更新しました'
    else
      render action: :edit
    end
  end
end
