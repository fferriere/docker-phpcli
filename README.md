# docker-phpcli

This project build and run php cli on a docker container

## Build the container

To build the container run the `./build.sh` script.

By default the container's image will be named 'fferriere/phpcli'.
You can change the name with the `FFERRIERE_PHPCLI_IMAGE` variable.

```
$ FFERRIERE_PHPCLI_IMAGE='my_image' ./build.sh
```

## Run the container

To run the container run the `./php-cli.sh` script.

By default the script run `php` command with `-a` if there is no argument.

If you have change the image's name, don't forget to fill the `FFERRIERE_PHPCLI_IMAGE` variable.
```
$ FFERRIERE_PHPCLI_IMAGE='my_image' ./php-cli.sh
```

You can use a script with the command below or export the variable on your `.bashrc`.


You can add alias on `.bashrc` :

    alias php='/your/path/php-cli.sh'
