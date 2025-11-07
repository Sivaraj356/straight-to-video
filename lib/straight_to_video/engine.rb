require "importmap-rails"

module StraightToVideo
  class Engine < ::Rails::Engine
    initializer "straight_to_video.importmap", before: "importmap" do |app|
      next unless app.config.respond_to?(:importmap)

      app.config.importmap.paths << root.join("config/importmap.rb")
      app.config.importmap.cache_sweepers << root.join("app/assets/javascripts")
    end

    # Sprockets-only safety: ensure assets are precompiled
    initializer "straight_to_video.assets" do |app|
      next unless defined?(Sprockets::Railtie)

      app.config.assets.precompile += %w[
        straight_to_video.js
        mediabunny.min.mjs
      ]
    end
  end
end
