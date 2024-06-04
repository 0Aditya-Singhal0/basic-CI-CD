install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

format:
	ruff format

train:
	python train.py

eval:
	echo "## Model Metrics" > report.md
	cat ./Results/metrics.txt >> report.md

	echo '\n## Confusion Matrix Plot' >> report.md
	echo '![Confusion Matrix](./Results/model_results.png)' >> report.md

	cml comment create report.md --token ${GITHUB_TOKEN}

update-branch:
	git config --global user.name 0Aditya-Singhal0
	git config --global user.email aditya.singhal.1909@gmail.com
	git checkout -b update origin/update
	git pull origin update
	git commit -am "Update with new results"
	git push origin update
