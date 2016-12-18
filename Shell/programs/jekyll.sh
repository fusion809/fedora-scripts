if ! `which jekyll > /dev/null 2>&1`; then
  printf "Defining the jekyll command...\n"
  if ! `which bundle exec jekyll > /dev/null 2>&1`; then
    if ! `which bundle > /dev/null 2>&1`; then
      if ! `which gem > /dev/null 2>&1`; then
        sudo dnf install -y rubygems ruby-devel libxml2-static
      fi
      sudo gem install bundler
    fi
    pushd $FGI
    bundle install
    bundle update
    popd
  fi
fi
