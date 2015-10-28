require 'active_model'

module Airhelp
  class Record
    include ActiveModel::Validations

    attr_accessor :id, :carrier_code, :carrier_code_type, :flight_number, :flight_date

    validates :id, presence: true
    validates :carrier_code, presence: true
    validates :carrier_code_type, presence: true
    validates :flight_number, presence: true
    validates :flight_date, presence: true
    validates_format_of :flight_date, with: /\A[0-9]{4}-[0-9]{2}-[0-9]{2}\z/

    def initialize(params)
      params.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end

    def process
      if @carrier_code =~ /\A[a-zA-Z]{3}\z/
        @carrier_code_type = 'ICAO'
      elsif @carrier_code =~ /\A[a-zA-Z]{2}\*?\z/
        @carrier_code_type = 'IATA'
      else
        @carrier_code_type = 'unknown'
        errors.add(:carrier_code_type, 'format is unknown')
      end
    end

    def to_a
      array = [id, carrier_code, carrier_code_type, flight_number, flight_date]
      array.push(errors.full_messages.join(';')) if errors.any?
      array
    end

    def self.headers(params=nil)
      %w(id carrier_code carrier_code_type flight_number flight_date #{params})
    end

  end
end
