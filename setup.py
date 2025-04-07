from setuptools import find_packages, setup

setup(
    name="django-admin-2fa-plus",
    version="0.1.0",
    description="Two-Factor Authentication for Django Admin with TOTP, backup codes, trusted devices, and more.",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    author="Your Name",
    author_email="your.email@example.com",
    url="https://github.com/zahid-ali-shah/django-admin-2fa-plus/",
    license="MIT",
    packages=find_packages(exclude=["example", "tests"]),
    include_package_data=True,
    install_requires=[
        "Django>=3.2",
        "pyotp>=2.3.0",
        "qrcode>=6.1",
        "Pillow>=7.0",
    ],
    classifiers=[
        "Framework :: Django",
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.6",
)
