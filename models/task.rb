require_relative '../core/database.rb'

class Task
  extend Database

  attr_reader :description

  def initialize(description, completed)
    @description = description
    @completed = completed
  end

  def print
    "#{description}: #{completed}"
  end

  def completed
    @completed == 1
  end

  def self.all
    tasks = []
    results = query("SELECT * FROM todos")

    results.each do |row|
      tasks << Task.new(row['description'], row['completed'])
    end

    tasks
  end
end