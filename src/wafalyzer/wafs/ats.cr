module Wafalyzer
  class Waf::ATS < Waf
    product "Apache Traffic Server (ATS web proxy)"

    PATTERN =
      Regex.union(
        /(\()?apachetrafficserver((\/)?\d+(.\d+(.\d+)?)?)/i,
        /ats((\/)?(\d+(.\d+(.\d+)?)?))?/i,
        /ats/i,
      )

    matches_header %w(Via Server), PATTERN
  end
end
