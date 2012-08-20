require 'movie_importer'

namespace :import do
  desc "Import actors from xml. Pass import file as SOURCE"
  task :movies => :environment do
    MovieImporter.new(ENV['SOURCE']).import!
  end
end
