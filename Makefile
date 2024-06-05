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
	git fetch origin
	git checkout -b update origin/update
	git pull origin update
	git commit -am "Update with new results"
	git push origin update

hf-login:
    git pull origin update
    git switch update
    pip install -U "huggingface_hub[cli]"
    huggingface-cli login --token $(HF) --add-to-git-credential

push-hub:
    huggingface-cli upload aditya-x-singhal/Drug-Classifier ./App --repo-type=space --commit-message="Sync App files"
    huggingface-cli upload aditya-x-singhal/Drug-Classifier ./Model /Model --repo-type=space --commit-message="Sync Model"
    huggingface-cli upload aditya-x-singhal/Drug-Classifier ./Results /Metrics --repo-type=space --commit-message="Sync Model"

deploy: hf-login push-hub