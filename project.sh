corepack enable
y | yarn set version stable
./bin/bundle add jsbundling-rails
rails javascript:install:esbuild
