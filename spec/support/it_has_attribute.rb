shared_examples "attribute" do |attr_name, types|

  (types || [:read, :write]).each do |t|
    suffix = t == :write ? '=' : ''
    attr_name = "#{attr_name}#{suffix}"
    it "is respond to :#{attr_name}" do
      subject.should be_respond_to attr_name
    end
  end

end