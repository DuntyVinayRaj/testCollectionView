# testCollectionView

--> To demonstrate the problems with delegate callbacks when paging has been enabled on collection views
--> current count is a variable used to know the count after which the collection view is loaded with more results
--> On reaching the 9th cell we lazy load next 10 cells
--> paging enabling and disabling is done in viewdidload
--> when paging is disabled in viewdidload the collection view works proper
--> when paging is enabled in viewdidload collection view breaks
