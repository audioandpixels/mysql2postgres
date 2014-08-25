require 'yaml'
require 'mysql2psql/errors'

class Mysql2psql
  
  class ConfigBase
    attr_reader :config, :filepath

    def initialize(configfilepath)
      @filepath=configfilepath
      @config = YAML::load(File.read(filepath))
    end
    def [](key)
      self.send( key )
    end
    def method_missing(name, *args)
      token=name.to_s
      default = args.length>0 ? args[0] : ''
      must_be_defined = default == :none
      case token
      when /mysql/i
        key=token.sub( /^mysql/, '' )
        value=config["mysql2psql"]["mysql"][key]
      when /pg/i
        key=token.sub( /^pg/, '' )
        value=config["mysql2psql"]["destination"]["postgres"][key]
      when /dest/i
        key=token.sub( /^dest/, '' )
        value=config["mysql2psql"]["destination"][key]
      when /only_tables/i
        value=config["mysql2psql"]["tables"] 
      else
        value=config["mysql2psql"][token]
      end
      value.nil? ? ( must_be_defined ? (raise Mysql2psql::UninitializedValueError.new("no value and no default for #{name}")) : default ) : value
    end
  end
  
end
