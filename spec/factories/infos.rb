FactoryBot.define do
  factory :info do
    fish_name             {"サンマ"}
    text                  {"偶然"}
    tackle                {"サオ"}
    bait                  {"エビ"}
    association :user

    after(:build) do |info|
      info.image.attach(io: File.open(Rails.root.join('spec', 'factories', 'images', 'sample.png')), filename: 'sample.png')
    end
  end
end