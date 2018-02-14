module RailsSettings
  class ScopedSettings < CachedSettings
    def self.for_thing(object, &block)
      @object = object
      @cache_prefix = block
      self
    end

    def self.thing_scoped
      unscoped.where(thing_type: @object.class.base_class.to_s, thing_id: @object.id)
    end
  end
end
