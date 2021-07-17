class Intervention < ApplicationRecord
  belongs_to :customer, :optional => true
  belongs_to :building, :optional => true
  belongs_to :battery, :optional => true
  belongs_to :column, :optional => true
  belongs_to :elevator, :optional => true
  belongs_to :employee, :optional => true
  

  before_create do
    self.result = "Incomplete"
  end

  before_create do
  self.status = "Pending"
  end

  after_create do
    slack_intervention_create
  end

  def slack_intervention_create
    notifier = Slack::Notifier.new ENV['SLACK_API'] do
        defaults channel: "#consolidation-week",
                 username: "Nathan Sheehy Slack API"
    end
    notifier.ping "Id of intervention: #{self.id}, Author: #{self.author}, Customer Id: #{self.customerid}, Building Id: #{self.buildingid}, Battery Id: #{self.batteryid}, Column Id: #{self.columnid}, Elevator Id: #{self.elevatorid}, Employee Id: #{self.employeeid}, Report: #{self.report}"
  end



end
