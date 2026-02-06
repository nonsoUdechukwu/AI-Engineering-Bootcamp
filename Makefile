export UV_LINK_MODE=copy

run-docker-compose:
	uv sync
	docker compose up --build -d

.PHONY: clean-notebook-outputs clean-notebook-ouputs

# Correctly spelled target to clear notebook outputs
clean-notebook-outputs:
	uv run python -m nbconvert --clear-output --inplace notebooks/*/*.ipynb

