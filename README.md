simple-wiki
===========

Simple wiki text processor

Usage

SimpleWiki::MarkupProcessor.process("**hello**")
produces "<b>hello</b>"


SimpleWiki::MarkupProcessor.process("\\\\hello\\\\")
produces "<i>hello</i>"
  end

SimpleWiki::MarkupProcessor.process("((hello1/hello2/hello3 [title]))")
produces "<a href=\"hello1/hello2/hello3\">title</a>"
