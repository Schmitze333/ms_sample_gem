RSpec.describe MsSampleGem do
  before :each do
    MsSampleGem.set_counter(fizz: 3, buzz: 5)
  end

  it "has a version number" do
    expect(MsSampleGem::VERSION).not_to be nil
  end

  it 'counts til three' do
    expect do
      MsSampleGem.count(3)
    end.to output("1\n2\nfizz\n").to_stdout
  end
end
