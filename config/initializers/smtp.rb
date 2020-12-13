ActionMailer::Base.smtp_settings = {
    address: 'smtp.sendgrid.net',
    port: 587,
    # port: 465,
    domain: 'doniraj.hr',
    user_name: 'apikey',
    password: ENV['SENDGRID_PASSWORD'],
    authentication: :login,
    enable_starttls_auto: true
}