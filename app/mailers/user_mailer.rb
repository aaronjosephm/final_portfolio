class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end

  # def message(user)
  #   @user = user  # Instance variable => available in view

  #   mail(to: @user.email, subject: 'Welcome to Le Wagon')
  # end

  def test(email, message, name)
    @user = {email: email, message: message, name: name}

    if (email.match(/\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i).nil? || name == "")
      return false
    else
      mail(
        subject: 'Aaron will get back to you!',
        to: email,
        from: 'administrator@siphercatta.com',
        html_body: '<strong>Hello</strong> dear Postmark user.',
        track_opens: 'true')
    end
  end

  def form(email, question1, question2, question3, level, option, name)
    @user = {email: email, question1: question1, question2: question2, question3: question3, level: level, option: option, name: name}

    if (email.match(/\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i).nil? || name == "")
      return false
    else
      mail(
        subject: 'Aaron will get back to you!',
        to: email,
        from: 'administrator@siphercatta.com',
        html_body: '<strong>Hello</strong> dear Postmark user.',
        track_opens: 'true')
    end
  end
end
