class StorageMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.storage_mailer.new_storage_created.subject
  #
  def new_storage_created(storage, user)
    @storage = storage
    @user = user
    mail(to: @user.email, subject: 'Your Storage was Successfully Created!')
  end
end
