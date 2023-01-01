require 'yaml'
require 'json'

release_targets =
  YAML
    .load_file(ARGV[0])
    .map { |n, v| [n, v].join(':') }
puts JSON.dump(release_targets)
