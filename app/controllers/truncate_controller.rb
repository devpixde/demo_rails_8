class TruncateController < ApplicationController
  allow_unauthenticated_access
  before_action :resume_session
  def index
    @data = 'Griaß God beinand Diandldrahn Brotzeit ipsum oans, is ma Wuascht. Nonumy im Beidl Spezi, dolore vui huift vui gscheckate Excepteur amet ja, wo samma denn. Liberalitas Bavariae bittschön suscipit feugiat gfreit mi des wiad a Mordsgaudi back mas wiavui es sauba pfundig?'
  end
end
