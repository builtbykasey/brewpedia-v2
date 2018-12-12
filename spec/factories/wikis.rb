FactoryGirl.define do
  factory :wiki do
    blend_name "MyString"
    notes "MyText"
    private false
    user nil
  end
end
