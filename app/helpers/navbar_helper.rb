module NavbarHelper
  def mount_navbar(models = ApplicationRecord.subclasses)
    Rails.application.eager_load!
    @models = models

    remove_from_navbar([User])
    links = mount_li_tags(@models)

    links
  end

  def active_li(text, path, options = {})
    if request.fullpath.include? path
      if options.empty?
        options[:class] = 'active'
      else
        options[:class] += ' active'
      end
    end

    content_tag(:li, options) do
      link_to text, path
    end
  end

  private

  def remove_from_navbar(models_to_remove = [])
    models_to_remove.each do |model|
      @models.delete(model)
    end
  end

  def mount_li_tags(models = [])
    li_tags = []
    models.each do |model|
      path = "#{model.to_s.pluralize.downcase}_path"
      li_tags << active_li("#{model.to_s.pluralize}", send(path))
    end

    li_tags.join(' ').html_safe
  end
end
