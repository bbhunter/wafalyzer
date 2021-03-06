module Wafalyzer
  class Waf::Stingray < Waf
    product "Stingray Application Firewall (Riverbed/Brocade)"

    PATTERN =
      /\AX-Mapping-/i

    valid_status :forbidden
    valid_status :internal_server_error
    matches_header "Set-Cookie", PATTERN
  end
end
