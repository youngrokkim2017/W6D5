class CatRentalRequest < ApplicationRecord
  STATUSES = ['PENDING', 'APPROVED', 'DENIED']
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, inclusion: { in: STATUSES }
  validate :does_not_overlap_approved_request

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: 'Cat'


  def overlapping_requests
    CatRentalRequest.where.not("start_date > ? OR end_date < ?" , self.end_date , self.start_date)
  end

  def overlapping_approved_requests
    self.overlapping_requests.where(status: 'APPROVED')
  end

  def does_not_overlap_approved_request
    unless overlapping_approved_requests.empty?
      errors[:overlapError] << "Overlap with approved requests!"
    end
  end


end
