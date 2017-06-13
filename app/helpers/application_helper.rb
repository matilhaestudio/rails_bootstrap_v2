module ApplicationHelper

	def show_noty(options = {})
    config = {}

    flash_types = {
      notice: 'notification',
      alert: 'alert',
      error: 'error'
    }

    config[:text] = options[:message]
    config[:type] = flash_types.has_key?(options[:type]) ? flash_types[options[:type]] : (options[:type] || 'alert')
    config[:animation] = {
      open: {height: 'toggle'},
      close: {height: 'toggle'},
      easing: 'swing',
      speed: 500
    }

    javascript_tag "noty(#{config.to_json})"
  end
  
end
