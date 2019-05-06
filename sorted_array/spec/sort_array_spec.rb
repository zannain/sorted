require './app.rb'

describe 'sort_array' do
 it 'returns an array if passed an array' do
    sut = sort_array([])
    expect(sut.class).to eq Array
 end

 it "warns the user to pass an array if passed a method that does not respond to sort" do
    sut = sort_array("")
    expect(sut).to eq "Please provide an array as an input"
 end

 it "the output does not contain any numbers from the input" do
   sut = sort_array([1,3,5,6])
   expect(sut).not_to include(1)
   expect(sut).not_to include(3)
   expect(sut).not_to include(5)
   expect(sut).not_to include(6)

 end
end
