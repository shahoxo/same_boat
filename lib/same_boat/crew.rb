module SameBoat
  class Crew
    def initialize(file_path)
      @file_path = file_path
    end

    def present
      git? ? git_commit_hash : file_hash
    end

    private

    def git_commit_hash
      `git show #{@file_path} | head -n 1 | cut -d ' ' -f2`
    end

    def file_hash
      Digest::MD5.hexdigest(File.read(@file_path, 2**7))
    end

    def git?
      !!`which git`
    end
  end
end
