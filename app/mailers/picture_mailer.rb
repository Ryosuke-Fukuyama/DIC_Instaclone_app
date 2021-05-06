class PictureMailer < ApplicationMailer
  def post_mail(picture)
    @picture = picture
    mail to: "ryosukemakaritoru425@gmail.com", subject: "投稿確認メール"
  end
end
