# DevOps Montreal Docker Presentation

Docker presentation material for the DevOps Montreal meetup on Jan 6, 2014.

Slides in `slides.pdf` and on http://www.slideshare.net/colinsurprenant/docker-introduction-dev-ops-mtl.

## Code Overview

- dual VirtualBox/EC2 Vagrantfile
- Vagrant provisioning using Ansible playbook for Docker setup
- example basic Redis Dockerfile
- example basic JRuby Dockerfile
- example JRuby app + Dockerfile

## Live Demo

Live demo commands sequence in `demo.txt`

- show basic Docker concepts with images and containers
- build base JRuby image
- build Redis image
- show exposing host filesystem into container for Redis persistence file
- build simple JRuby Redis push/pull app image
- show poor man containers env sharing for Redis container IP in app containers
- run Redis container, "Redis push" app container, "Redis pull" app container
- show images sharing using repository
- show remote deployment on ec2

## Author
**Colin Surprenant**, http://github.com/colinsurprenant/, [@colinsurprenant](http://twitter.com/colinsurprenant/), colin.surprenant@gmail.com, http://colinsurprenant.com/

## License
Apache License, Version 2.0. See the `LICENSE.md` file.
