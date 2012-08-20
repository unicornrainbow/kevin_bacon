require 'spec_helper'

describe Actor do
  it { should have_many :billings }
  it { should have_many :movies }
end
