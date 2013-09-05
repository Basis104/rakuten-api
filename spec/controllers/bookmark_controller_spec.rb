require 'spec_helper'

describe BookmarkController do
  specify 'open book mark' do
    visit bookmark_path
  end
end
