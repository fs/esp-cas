class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.timestamps
      t.string   "name"                          
      t.string   "email"                         
      t.string   "crypted_password"              
      t.string   "password_salt"                 
      t.string   "persistence_token"             
      t.datetime "created_at"                    
      t.datetime "updated_at"                    
      t.string   "gender"                        
      t.integer  "age"                           
      t.boolean  "terms_and_conditions",  :default => false
      t.string   "perishable_token",      :default => "",    :null => false
      t.string   "single_access_token",   :default => "",    :null => false
      t.integer  "login_count",           :default => 0,     :null => false
      t.integer  "failed_login_count",    :default => 0,     :null => false
      t.datetime "last_request_at"                                         
      t.datetime "current_login_at"                                        
      t.datetime "last_login_at"                                           
      t.string   "current_login_ip"                                        
      t.string   "last_login_ip"                                           
      t.datetime "activated_at"                                            
      t.integer  "competition_id"                                          
      t.boolean  "performer",             :default => false, :null => false
      t.string   "candidate_email"                                         
      t.string   "candidate_email_token"                                   
      t.boolean  "opt_in",                :default => false, :null => false
      t.string   "mobile_number"
    end
    
  end

  def self.down
    drop_table :users
  end
end
