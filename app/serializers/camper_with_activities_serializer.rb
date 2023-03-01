class CamperWithActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :activities

  def activities
    self.object.activities
  end
end
