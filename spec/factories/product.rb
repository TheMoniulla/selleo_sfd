FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "BCAA#{n}" }
    sequence(:url) { |n| "http://www.sfd.pl/sklep/ActivLab_BCAA_Xtra-opis3491#{n}.html" }
  end
end
