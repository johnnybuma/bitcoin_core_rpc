require_relative 'lib/bitcoin_core_rpc/version'

Gem::Specification.new do |spec|
  spec.name          = "bitcoin_core_rpc"
  spec.version       = BitcoinCoreRpc::VERSION
  spec.authors       = ["johnnybuma"]
  spec.email         = ["johnny.buma@gmail.com"]

  spec.summary       = %q{Basic rubygem to interact with Bitcoin Core JSON RPC API.}
  spec.description   = %q{Rubygem to provide connection to bitcoin core json rpc api}
  spec.homepage      = "https://github.com/johnnybuma/bitcoin_core_rpc.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/johnnybuma/bitcoin_core_rpc.git"
  spec.metadata["changelog_uri"] = "https://github.com/johnnybuma/bitcoin_core_rpc/blob/dd71db0187c206ed15d36c7a41a68cf0e893a5df/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty', '~> 0.18.1'
  spec.add_dependency 'json', '~> 2.5.1'


end
