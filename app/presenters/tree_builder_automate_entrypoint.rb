class TreeBuilderAutomateEntrypoint < TreeBuilderAutomateCatalog
  def override(node, object)
    node.delete(:selectable)
    node[:fqname] = object.fqname if object.try(:fqname)
  end

  def root_options
    root = super
    root.delete(:selectable)
    root
  end
end
