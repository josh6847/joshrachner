module HomeHelper
  def notempty?(attribute)
    !attribute.blank? && !attribute.nil?
  end
  def write_content(object)
    return "" if object.blank?
    object.first.html
  end
end