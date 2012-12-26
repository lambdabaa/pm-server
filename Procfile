web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb -E $RACK_ENV
resque: env TERM_CHILD=1 RESQUE_TERM_TIMEOUT=10 bundle exec rake jobs:work
