Gem::Specification.new do |s|
  s.name        = 'poe_rails'
  s.version     = '0.0.5'
  s.license     = 'GNU GPLv3 and AGPLv3'
  s.authors     = ['Yukiharu Nakaya', 'Rika Yoshida', 'Rei Kagetsuki']
  s.email       = 'info@genshin.org'
  s.homepage    = 'http://genshin.org'
  s.summary     = 'Phantom Open Emoji for Rails'
  s.description = 'Phantom Open Emoji with utilities and resources for Rails.'

  s.files        = `git ls-files`.split("\n")  

  s.add_dependency 'highline'
  s.add_dependency 'phantom_open_emoji'
  s.add_dependency 'poe_static'
end
