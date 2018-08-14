module ApplicationHelper
  def test_helper
    link_to "all", job_offers_path, class: "btn btn-danger"
  end
end
