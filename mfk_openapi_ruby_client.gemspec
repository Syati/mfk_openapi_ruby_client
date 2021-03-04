# -*- encoding: utf-8 -*-

=begin
#Money Forward Kessai API v2

#Money Forward Kessai REST API

The version of the OpenAPI document: 2.6.7
Contact: api.support@mfkessai.co.jp
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "mfk_openapi_ruby_client/version"

Gem::Specification.new do |s|
  s.name        = "mfk_openapi_ruby_client"
  s.version     = MfkOpenapiRubyClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["api.support@mfkessai.co.jp"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Money Forward Kessai API v2 Ruby Gem"
  s.description = "Money Forward Kessai REST API"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
