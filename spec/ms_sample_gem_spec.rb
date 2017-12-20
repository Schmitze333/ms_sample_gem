RSpec.describe MsSampleGem do
  it "has a version number" do
    expect(MsSampleGem::VERSION).not_to be nil
  end

  it 'counts til three' do
    expect do
      MsSampleGem.count(3)
    end.to output("1\n2\n3\n").to_stdout
  end
end
