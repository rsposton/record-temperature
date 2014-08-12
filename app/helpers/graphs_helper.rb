module GraphsHelper
  def get_graph_labels
    array_of_labels=[]
    @readings.each do |r| array_of_labels << r.recorded_at.to_s end
    array_of_labels
  end
end
