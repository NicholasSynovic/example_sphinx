build-html:
	git --no-pager tag | rev | col | cut -d ' ' -f 1 | rev | xargs -I % poetry version %
	poetry version --short > src/_version
	mkdocs build --clean --site-dir html

create-dev:
	pre-commit install
	pre-commit autoupdate
	rm -rf env
	python3.13 -m venv env
	( \
		. env/bin/activate; \
		pip install -r requirements.txt; \
		deactivate; \
	)

deploy-gh:
	ghp-import --no-jekyll --push --force --remote origin --branch gh-pages html
