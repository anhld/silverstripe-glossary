
<div class="index-for-glossary">
    <% loop $GroupedTerms.GroupedBy(FirstLetter) %>
    <a href="#glossary-entry-for-$FirstLetter">$FirstLetter</a>
    <% end_loop %>
</div>

<div class="terms-outer">
    <% loop $GroupedTerms.GroupedBy(FirstLetter) %>
    <div class="glossary-separator"  id="glossary-entry-for-$FirstLetter">
        <header class="terms-header">
            <h3>$FirstLetter</h3>
            <a href="#main" class="back-to-top">Back to top</a>
        </header>
        <div class="terms-inner">
            <dl>
            <% loop $Children %>
                <dt id="position-for-$URLSegment"><dfn>$Title</dfn></dt>
                <dd>$ExplanationShort</dd>
            <% end_loop %>
            </dl>
        </div>
    </div>
    <% end_loop %>
</div>
