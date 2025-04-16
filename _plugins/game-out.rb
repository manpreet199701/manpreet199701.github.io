# frozen_string_literal: true

require 'jekyll-watch'

module Jekyll
    module Watcher
        extend self

        alias method :original listen ignore_paths, :listen ignore_paths

        def listen_ignore_paths (options)
            original_listen_ignore_paths (options) + [%r!.*\.TMP!i]
        end 
    end
end