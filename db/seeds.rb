user = User.create!(
  email: 'cmw',
  encrypted_password: '$2a$11$kynP4ltKb2/nWobfiWYw9utfvoj/pxjatRKENILjmCZSYwykoIu5u'
) unless User.where(email: 'cmw').exists?
