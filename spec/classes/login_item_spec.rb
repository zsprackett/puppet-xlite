require 'spec_helper'

describe 'xlite::login_item' do
  let(:facts) { default_test_facts }

  describe 'with no paramaters' do
    it { should contain_exec('X-Lite').with({
      :refreshonly => true,
      :subscribe   => 'Package[X-Lite]',
      :require     => 'Osx_login_item[X-Lite]'
    })}
  end

  describe 'with ensure absent' do
    let(:params) {
      {
        :ensure  => 'absent',
      }
    }
    it { should contain_osx_login_item('X-Lite').with({
      :ensure  => 'absent',
      :path    => '/Applications/X-Lite.app',
      :require => 'Package[X-Lite]'
    })}
  end
end
