# frozen_string_literal: true

# Flash messages support title and message attributes
# It also supports 3 types: success, notice, error
# flash[:success] = { title: 'Successfully saved!', message: 'Anyone with a link can now view this file.' }
class Page::FlashMessageComponent < ApplicationComponent
  option :type
  option :title
  option :message, optional: true
end
