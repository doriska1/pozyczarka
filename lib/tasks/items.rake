require_relative '../items_manager'

namespace :items do
  task fix_user_associations: :environment do
    user = User.find_by_email( 'email@email.com')
    ItemsManager.new.fix_items_amd_users_associations(user: user)
    p 'Finished'
  end
end
