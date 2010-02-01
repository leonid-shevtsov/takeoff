class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = false
    c.crypted_password_field = false
    c.openid_optional_fields = [:email] #TODO more fields from http://openid.net/specs/openid-simple-registration-extension-1_0.html
  end

  #def self.find_by_openid_identifier(openid_identifier)
    #find(:first, :conditions => ['openid_identifier=? OR backup_openid_identifier=?',openid_identifier,openid_identifier])
  #end

private
  def map_openid_registration(registration)
    self.email = registration["email"]
    #TODO process fields obtained from openid
  end
end
