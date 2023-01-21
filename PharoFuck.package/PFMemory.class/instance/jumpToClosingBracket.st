interpreter
jumpToClosingBracket
	[ #(nil $]) includes: codeStream peek ] whileFalse: [ codeStream next ]