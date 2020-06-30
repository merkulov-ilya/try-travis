.PHONY: test doc

# DefaultReporter SpecReporter ProgressReporter RubyMateReporter RubyMineReporter JUnitReporter MeanTimeReporter HtmlReporter
test:
	@MINITEST_REPORTER=HtmlReporter bundle exec rake test

clean:
	rm -rf .yardoc
	rm -rf coverage
	rm -rf doc

doc:
	yardoc metz.rb
graph:
	yard graph --protected --full --dependencies

