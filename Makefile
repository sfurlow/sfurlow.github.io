.PHONY: clean package

default: package

clean:
	-rm -rf *.egg-info || true
	-rm -rf build/ || true
	-rm -rf dist/ || true
	-find -type d -name '__pycache__' -exec rm -rf {} \; || true

package: clean
	python3 setup.py sdist bdist_wheel
