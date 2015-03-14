require 'spec_helper'

describe Of do
  it 'has a version number' do
    expect(Of::VERSION).not_to be nil
  end

  it 'gives n of something' do
    expect(5.of { 'something' }).to eq(['something', 'something', 'something', 'something', 'something'])
  end
end
