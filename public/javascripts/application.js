// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function submitAllDocumentForms() {
var arrDocForms = document.getElementsByTagName('form');

for(var i=0;i<arrDocForms.length;i++) {
  arrDocForms(i).submit();
}

}
