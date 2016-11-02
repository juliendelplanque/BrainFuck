parsing
astNodeForToken: aToken
	^ (self tokenToASTNodeDictionary at: aToken ifAbsent: [ ^ nil ]) value: aToken