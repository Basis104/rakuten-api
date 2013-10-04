class BookmarkController < ApplicationController
  def index
    render 'bookmark/index'
  end

  def search
    keyword = params['keyword']
    httpClient = HTTPClient.new

    @jsonData = nil
    @errorMeg = nil

#    begin
#      data = httpClient.get_content('https://app.rakuten.co.jp/services/api/IchibaItem/Search/20130805', {
#          'applicationId' => '1005207065584656150',
#          'affiliateId'   => '11b23db1.acb56b0a.11b23db2.0c5a2bef',
#          'keyword'       => keyword
#      })
#      @jsonData = JSON.parse data
      @jsonData = {"keyword" => keyword }
#    rescue HTTPClient::BadResponseError => e
#    rescue HTTPClient::TimeoutError => e
#    end

    render 'bookmark/index'
  end
end

