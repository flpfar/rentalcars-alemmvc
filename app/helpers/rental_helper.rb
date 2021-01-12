module RentalHelper
  def rental_status(rental)
    status_colors = { 'scheduled' => 'success', 'in_review' => 'warning', 'ongoing' => 'primary', 'finalized' => 'secondary' }
    content_tag(:span, class: "badge badge-#{status_colors[rental.status]}") do
      t(rental.status).capitalize
    end
  end
end
