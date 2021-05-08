class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password]) #ユーザーが存在しておりかつパスワードが正しい
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user) #チェックボックスにチェックがあればrememberメソッドを有効にする
      redirect_back_or @user
      # redirect_to @user
    else
      # エラーメッセージを作成する
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in? #ログイン状態の時のみログアウトを有効にする
    redirect_to root_url
  end

end
