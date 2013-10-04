# -*- coding: utf-8 -*-
require 'spec_helper'

describe BookmarkController do
  describe 'post TEST' do
    before do
      @params = {
        :keyword => "aaa"
      }
      keyword =  "aaa"
    end

    it 'receive data' do
      post :search, @params
      response.should be_success

    end

  end
end
