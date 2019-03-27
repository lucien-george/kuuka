# Preview all emails at http://localhost:3000/rails/mailers/storage_mailer
class StorageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/storage_mailer/new_storage_created
  def new_storage_created
    StorageMailer.new_storage_created(Storage.last, User.last)
  end

end
