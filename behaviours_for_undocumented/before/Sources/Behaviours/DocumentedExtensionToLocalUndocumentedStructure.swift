
public struct LocalUndocumentedStructure {}

/// This extension documentation should be VISIBLE, supplanting the missing documentation at the structure’s main declaration.
///
/// Rationale:
///
/// While consistency with behaviour elsewhere would dictate hiding the extension along with the main declaration, an exeption is necessary in this particular case as a concession to code generation tools. Users have no access to the declarations produced by autogenerated code (most notably Core Data entities), and have no way of adding documentation comments to them. Autogenerated code can be extended, and those extensions should still be documentable. The only way that is possible is by having `--skip-undocented` parse into extensions even when the main declaration has no documentation.
///
/// Note: This documentation also clashes with that of another extension. For this, the merge strategy is currently undefined.
extension LocalUndocumentedStructure {
    
    /// Should be VISIBLE because documentation exists for method and extension.
    ///
    /// Should be merged into the method list of the main declaration.
    public func should_be_VISIBLE_because_documentation_exists_for_method_and_extension() {}
    
    /// :nodoc:
    public func should_be_HIDDEN_and_NOT_WARN_because_documentation_is_opted_out() {}
    
    public func should_be_HIDDEN_and_WARN_because_no_documentation_exists() {}
}

/// This extension documentation should be VISIBLE, supplanting the missing documentation at the structure’s main declaration.
///
/// Rationale:
///
/// While consistency with behaviour elsewhere would dictate hiding the extension along with the main declaration, an exeption is necessary in this particular case as a concession to code generation tools. Users have no access to the declarations produced by autogenerated code (most notably Core Data entities), and have no way of adding documentation comments to them. Autogenerated code can be extended, and those extensions should still be documentable. The only way that is possible is by having `--skip-undocented` parse into extensions even when the main declaration has no documentation.
///
/// Note: This documentation also clashes with that of another extension. For this, the merge strategy is currently undefined.
extension LocalUndocumentedStructure {
    
    /// An extension method (to ensure the extension is not empty.)
    public func extensionMethod() {}
}
