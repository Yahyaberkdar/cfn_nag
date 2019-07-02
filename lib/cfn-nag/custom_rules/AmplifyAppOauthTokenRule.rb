# frozen_string_literal: true

require 'cfn-nag/violation'
require_relative 'password_base_rule'

class AmplifyAppOauthTokenRule < PasswordBaseRule
  def rule_text
    'Amplify App OauthToken must not be a plaintext string ' \
    'or a Ref to a NoEcho Parameter with a Default value.'
  end

  def rule_type
    Violation::FAILING_VIOLATION
  end

  def rule_id
    'F38'
  end

  def resource_type
    'AWS::Amplify::App'
  end

  def password_property
    :oauthToken
  end
end