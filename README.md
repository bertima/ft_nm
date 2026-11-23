*This project has been created as part of the 42 curriculum by Bertrmar.*

# __FT_NM__
 
## Table of Contents

1. [Description](#description)
2. [Technical Information](#technical-information)
3. [Instructions](#instructions)
4. [Visualisation](#visualisation)
5. [Resources](#resources)
6. [Author](#author)

## Description

The goal of this project is to recoding the “nm” command in Linux. We have set up a Docker environment so that we can work on and test our program under consistent conditions every time.

## Technical Information

This project was created with this technical software:

- OS: Linux -> Ubuntu
- Architecture: x86_64

## Instructions

### Makefile

Open your terminal and copy paste this intruction.

```bash
git clone https://github.com/bertima/ft_nm ft_nm &&
cd ft_nm
```

Compile.

```bash
make
```

If you want clean the project.

```bash
make fclean
```

### Use

### Docker

If you want run this project with the same configuration of these creation:

```bash
git clone https://github.com/bertima/ft_nm ft_nm &&
cd ft_nm &&
docker build -f docker/Dockerfile -t <my-project> . && docker run --rm -it <my-project>
```

Now you are in terminal in docker environnement close and with minimal configuration. Exucute: 

```bash
make
```

## Visualisation 

## Resources

- https://man7.org/linux/man-pages
- https://dev.to/hassaansyed/whats-inside-your-o-file-a-beginner-friendly-guide-to-the-linux-nm-command-57i
- https://wikipedia.com

AI is used to understand and clarify 

## Author

Bertima
