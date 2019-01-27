#
# Cookbook:: jenkins-setup
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'jenkins-setup::default' do

      let(:chef_run) do
        runner = ChefSpec::ServerRunner.new
        runner.converge(described_recipe)
      end

      it 'should include java recipe' do
        expect(chef_run).to include_recipe('java')
      end

      it 'should include jenkins::master recipe' do
        expect(chef_run).to include_recipe('jenkins::master')
      end
end