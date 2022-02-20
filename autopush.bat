set defaultcommit=%date%
@hugo
@cd ./public
@echo git start:
git add .
@set /p commit=input commitcontent:
@ if defined commit (git commit -m "%commit%") else (git commit -m "%defaultcommit%")
git push
@echo finish
@pause