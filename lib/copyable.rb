require "copyable/version"

module Copyable
  def copy
    copy = self.clone
    copy.created_at = nil if copy.respond_to?(:created_at)
    copy.updated_at = nil if copy.respond_to?(:updated_at)

    # Has And Belongs To Many
    self.class.reflect_on_all_associations.select {|association| association.macro == :has_and_belongs_to_many }.collect(&:name).each do |habtm_collection|
      a_copy.send(habtm_collection) << send(habtm_collection)
    end
  end
end

ActiveRecord::Base.send(:include, Copyable) if defined? ActiveRecord::Base