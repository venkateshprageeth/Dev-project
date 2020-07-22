require 'spec_helper'
describe 'dev_proj' do

  context 'with defaults for all parameters' do
    it { should contain_class('dev_proj') }
  end
end
