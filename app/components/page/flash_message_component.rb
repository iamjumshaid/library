# frozen_string_literal: true

# Flash messages support title and message attributes
# It also supports 3 types: success, notice, error
# flash[:success] = { title: 'Successfully saved!', message: 'Anyone with a link can now view this file.' }
class Page::FlashMessageComponent < ApplicationComponent
  TYPES = %i[alert error notice success].freeze

  option :type
  option :title
  option :message, optional: true

  private

  COLOR = {
    alert: 'text-red-400',
    notice: 'text-gray-400',
    success: 'text-green-400'
  }.freeze

  ICON = {
    alert: 'exclamation-circle',
    notice: 'information-circle',
    success: 'check-circle'
  }.freeze

  def icon
    outline_icon ICON[type],
                 class: "w-6 h-6 #{COLOR[type]}",
                 'aria-hidden': true
  end
end
