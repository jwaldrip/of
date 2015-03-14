require 'spec_helper'

describe Of do
  it 'has a version number' do
    expect(Of::VERSION).not_to be nil
  end

  it 'gives n of a block value' do
    expect(5.of { 'something' }).to eq(['something', 'something', 'something', 'something', 'something'])
  end

  it 'gives n of a Class that responds to new' do
    expect(5.of(String)).to eq(['', '', '', '', ''])
  end

  it 'raises an ArgumentError when a class does not respond to new' do
    expect { 5.of(Fixnum) }.to raise_error ArgumentError
  end

  it 'raises an ArgumentError when the instance is not a Class' do
    expect { 5.of("a") }.to raise_error ArgumentError
  end
end
