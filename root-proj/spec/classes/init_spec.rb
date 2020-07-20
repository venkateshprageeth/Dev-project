require 'spec_helper'
describe 'proj' do

  context 'with defaults for all parameters' do
    it { should contain_class('proj') }
  end
end
