# encoding: utf-8

class Binfo < ActiveRecord::Base
  attr_accessible :title, :author, :page, :date_available

  validates :title,
      :presence => { :if => 'title.blank?', :message => 'タイトルは必ず入力してください。' }
    validates :author,
      :presence => { :if => 'author.blank?', :message => '著者は必ず入力してください。' }
    validates :page,
      :presence => { :if => 'page.blank?', :message => 'ページは必ず入力してください。' },
      :numericality => { :only_integer => true,
         :message => "「%{value}」は整数ではありません。" },
      :numericality => { :greater_than => 0,
         :message => "ページは、0より大きくなければいけません。" }
    validates :date_available,
      :presence => { :if => 'date_available.blank?', :message => '出版日は必ず入力してください。' }

end
