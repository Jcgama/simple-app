require 'rails_helper'
require_relative '../support/utilities.rb'


RSpec.describe User, type: :model do
  subject { FactoryGirl.build(:user) }
  
  describe "testing validations" do
      it "should be valid with all fields" do
         expect(subject).to be_valid 
      end
      
      it "should not be valid absent email" do
         subject.email = nil
         expect(subject).to_not be_valid
      end
      
      it "should not be valid absent password" do
         subject.password = nil
         expect(subject).to_not be_valid
      end
      
      it "should not be valid absent first name" do
         subject.first_name = nil
         expect(subject).to_not be_valid
      end
      
      it "should not be valid absent last name" do
         subject.last_name = nil
         expect(subject).to_not be_valid
      end
      
  end
  
end
