$Group = New-AzADGroup -DisplayName "Technical Operations" -MailNickname
"TechOps"
Add-AzADGroupMember -MemberObjectId $User.Id -TargetGroupObjectId $Group.Id
$Group2 = New-AzADGroup -DisplayName "Finance" -MailNickname "Finance"
Add-AzADGroupMember -MemberObjectId $User2.Id -TargetGroupObjectId $Group2.Id
