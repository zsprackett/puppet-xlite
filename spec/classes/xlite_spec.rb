require 'spec_helper'

describe 'xlite' do
  let(:facts) { default_test_facts }

  describe 'when not specifying a version' do
    it { should contain_package('X-Lite').with({
      :ensure => 'installed',
      :provider => 'appdmg'
    })}
  end

  describe 'when specifying a version' do
    let(:params) {
      {
        :version      => '42',
        :download_url => 'https://a.b.c'
      }
    }
    it { should contain_package('X-Lite').with({
      :ensure => 'installed',
      :provider => 'appdmg',
      :source   => 'https://a.b.c/X-Lite_42.dmg'
    })}
  end
end
