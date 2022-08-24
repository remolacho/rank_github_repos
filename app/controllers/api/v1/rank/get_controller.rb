class Api::V1::Rank::GetController < ApplicationController
  skip_before_action :authorized_user

  # GET /v1/rank/get/:kind (stars, forks, languages)
  def index
  end
end
