GenericIssueField.seed(:id, [
  { :id => 1,  :project_id => 2, :title => 'severity', :description => 'how bad is it?',
         :default_value => 3, :mandatory => false },
  { :id => 2,  :project_id => 2, :title => 'component', :description => 'pick the component',
         :default_value => 7, :mandatory => false }
])

GenericIssueFieldValue.seed(:id, [
 { :id => 1, :generic_issue_field_id => 1, :title => 'enhancement', :description => 'no bug'},
 { :id => 2, :generic_issue_field_id => 1, :title => 'minor' , :description => 'a trivial flaw'},
 { :id => 3, :generic_issue_field_id => 1, :title => 'major', :description => 'a normal bug' },
 { :id => 4, :generic_issue_field_id => 1, :title => 'blocker', :description => 'something very bad' },
 { :id => 5, :generic_issue_field_id => 1, :title => 'critical' , :description => 'a crash or security thing' },
 { :id => 6, :generic_issue_field_id => 2, :title => 'algebra',  :description => ''},
 { :id => 7, :generic_issue_field_id => 2, :title => 'packages' , :description => ''},
 { :id => 8, :generic_issue_field_id => 2, :title => 'geometry', :description => '' }
])

(1..300).each do |i|
  IssueGenericIssueFieldValue.seed(:generic_issue_field_value_id, [
   { :issue_id => i, :generic_issue_field_value_id => [1,2,3,4,5].sample },
   { :issue_id => i, :generic_issue_field_value_id => [6,7,8].sample }
  ])
end
