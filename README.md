# 🔖 Development Container Images
> Docker image for all of my devcontainers for Codespaces and Gitpod

## What is this repository?
This repository holds all my dev containers for Gitpod and Codespaces so I don't have to repeat code.

## Sweet! How do I use?
### Codespaces
Under `.devcontainer/Dockerfile` you can use the prebuilt image:

```dockerfile
FROM auguwu/devcontainers:latest

# Install stuff here
```

### Gitpod
Add the image `auguwu/devcontainers:gitpod-latest` in your **.gitpod.yml** file:

```yml
image: auguwu/devcontainers:latest
```

## Why Arch Linux as the base?
for the memes mainly lol.

## License
**devcontainer-images** does not contain a LICENSE due to it, so you can use the code from the images if you wish without any credits!
