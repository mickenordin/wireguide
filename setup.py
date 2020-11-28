import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="wireguide",
    version="0.0.7",
    author="Mikael Nordin",
    author_email="mik@elnord.in",
    description="A WireGuard GUI for GNU/Linux",
    include_package_data=True,
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/mickenordin/wireguide",
    packages=setuptools.find_packages(),
    scripts=["wireguide/wireguide"],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: GNU General Public License v3 or later (GPLv3+)",
        "Environment :: X11 Applications",
        "Operating System :: POSIX :: Linux",
    ],
    python_requires='>=3.6',
)
