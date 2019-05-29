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

        if config["mysql2psql"]["mysql"]["url"]
          value = DatabaseUrl.to_active_record_hash(config["mysql2psql"]["mysql"]["url"])[key.to_sym]
        else
          value=config["mysql2psql"]["mysql"][key]
        end

      when /pg/i
        key=token.sub( /^pg/, '' )

        if config["mysql2psql"]["destination"]["postgres"]["url"]
          value = DatabaseUrl.to_active_record_hash(config["mysql2psql"]["destination"]["postgres"]["url"])[key.to_sym]
        else
          value = config["mysql2psql"]["destination"]["postgres"][key]
        end

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
