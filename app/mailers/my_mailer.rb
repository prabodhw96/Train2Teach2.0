class MyMailer < ActionMailer::Base

  def sendgrid_client
    @sendgrid_client ||= SendGrid::API.new(api_key: "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")
  end

  def new_user(user)
    template_id = "newuser"

    data = {
      "personalizations": [
        {
          "to": [
            {
              "email": user.email
            }
          ],
          "substitutions": {
            "-name-": "USER_NAME",
            "-content-": user.name
          },
          "subject": "Welcome to Code4Pro"
        }
      ],
      "from": {
        "email": "code4startup@gmail.com"
      },
      "template_id": template_id
    }

    sendgrid_client.client.mail._("send").post(request_body: data)
  end
end
