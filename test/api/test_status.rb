# frozen_string_literal: true

require_relative '../test_helper'

class TestStatus < TestApp
  def test_app_returns_status
    get('/api/status')
    assert(last_response.ok?)
    Approvals.verify(last_response.body, format: :json, name: 'test_app_returns_status')
  end
end
