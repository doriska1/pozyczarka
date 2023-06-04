# frozen_string_literal: true

require_relative '../items_manager'

namespace :items do
  task fix_user_associations: :environment do
    user = User.find_by(email: 'email@email.com')
    ItemsManager.new.fix_items_amd_users_associations(user:)
    p 'Finished'
  end
end
