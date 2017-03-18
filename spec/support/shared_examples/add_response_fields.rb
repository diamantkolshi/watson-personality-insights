RSpec.shared_examples "add_response_fields" do |object, options|
  options.each do |method_name|
    it "#{object} class has method called #{method_name} and return result from json_result" do
      is_expected.to respond_to("#{method_name.to_sym}")
    end

    it "#{method_name} method return hash from json_result[#{method_name}]" do
      expect(eval("#{object}.#{method_name}")).to eq(eval("#{object}").json_result["#{method_name}"])
    end
  end
end
