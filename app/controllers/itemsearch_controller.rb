class ItemsearchController < ApplicationController
  def index
    render 'itemsearch/index'
  end

  def result
    httpClient = HTTPClient.new
    @jsonData = nil
    @errorMeg = nil
    begin
      data = httpClient.get_content('http://api.rakuten.co.jp/rws/3.0/json',{
                                      'developerId' => '1046125781907581411',
                                      'affiliateId'   => '11b23db1.acb56b0a.11b23db2.0c5a2bef',
                                      'operation' => 'GetAreaClass',
                                      'version' => '2009-03-26',
                                     })
      @jsonData = JSON.parse data
      p @jsonData
    rescue HTTPClient::BadResponseError => e
    rescue HTTPClient::TimeoutError => e
    end
    render 'itemsearch/index'
  end
end
