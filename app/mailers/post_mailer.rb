class PostMailer < ApplicationMailer
    def new_post_email
        @post = params[:post]
        mail(to: "bitf17a012@pucit.edu.pk", subject: "A new post is uploaded!")
    end
end
