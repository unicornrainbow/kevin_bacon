require 'actor_importer'

namespace :import do
  desc "Import actors from xml. Pass import file as SOURCE"
  task :actors => :environment do
    ActorImporter.new(ENV['SOURCE']).import!
  end
end
