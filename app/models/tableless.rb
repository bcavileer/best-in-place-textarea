class Tableless

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  def self.attr_accessor(*vars)
    @attributes ||= []
    @attributes.concat(vars)
    super
  end

  def self.attributes
    @attributes
  end

  def initialize(attributes={})
    attributes && attributes.each do |name, value|
      send("#{name}=", value) if respond_to? name.to_sym
    end
  end

  def persisted?
    false
  end

  def self.inspect
    "#<#{ self.to_s} #{ self.attributes.collect { |e| ":#{ e }" }.join(', ') }>"
  end

end
