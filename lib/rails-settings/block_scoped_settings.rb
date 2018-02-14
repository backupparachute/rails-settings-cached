module RailsSettings
  class BlockScopedSettings < ScopedSettings
    def self.for_thing(object, &block)
      @object = object
      @cache_prefix = block
      self
    end
  end
end
