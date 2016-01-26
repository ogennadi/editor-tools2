module PapersHelper
  def status_options
      [["Under Review", "under_review"],
       ["Accepted", "accepted"],
       ["Rejected", "rejected"]]
  end

  def status_to_text(status)
    case status
      when "under_review"
        "Under Review"
      when "accepted"
        "Accepted"
      when "rejected"
        "Rejected"
      else
        "Unknown"
    end
  end
end
