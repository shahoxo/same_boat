require "bundler/gem_tasks"
require "same_boat"

namespace 'same_boat' do
  desc 'Detect file group diff'
  task row: :parse_options do
    same_boat = SameBoat.build(crew_paths: @options[:crews], journal_path: @options[:journal])
    result = same_boat.row
    p result
    exit(result)
  end

  desc 'Write file groupt stamp'
  task journal: :parse_options do
    same_boat = SameBoat.build(crew_paths: @options[:crews], journal_path: @options[:journal])
    same_boat.journal
    exit
  end

  task :parse_options do
    grouped_argv = ARGV.slice_before(/^-/).map{|a| a.first.start_with?('-') ? [a[0], a[1..-1].join(',')] : a}.flatten

    @options = {}
    OptionParser.new do |opts|
      opts.banner = 'Usage: rake same_boat:{row|journal} [options]'
      opts.on('-c', '--crews FILE_REGEXP', Array) { |v| @options[:crews] = v }
      opts.on('-j', '--journal JOURNAL_FILE_NAME') { |v| @options[:journal] = v }
    end.parse!(grouped_argv)
    @options[:journal] ||= SameBoat::DEFAULT_JOURNAL
    @options[:crews] ||= Dir[SameBoat::DEFAULT_CREWS]
  end
end
