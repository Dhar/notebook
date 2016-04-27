# Controller for the Location model
class LocationsController < ContentController
  private

  def content_params
    params.require(:location).permit(content_param_list)
  end

  def content_param_list
  	[
      :universe_id, :user_id, :name, :type_of, :description, #:map,
      :population, :currency, :motto, :capital, :largest_city, :notable_cities,
      :area, :crops, :located_at, :established_year, :notable_wars,
      :notes, :private_notes
  	]
  end
end
