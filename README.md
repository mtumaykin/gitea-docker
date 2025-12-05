.
├── ansible
│   ├── ansible.cfg
│   ├── hosts
│   ├── playbooks
│   │   ├── all.yaml
│   │   ├── base.yaml
│   │   └── gitea.yaml
│   └── roles
│       ├── base
│       │   ├── defaults
│       │   │   └── main.yml
│       │   ├── files
│       │   ├── handlers
│       │   │   └── main.yml
│       │   ├── meta
│       │   │   └── main.yml
│       │   ├── tasks
│       │   │   ├── base_install.yml
│       │   │   └── main.yml
│       │   └── vars
│       │       └── main.yml
│       └── gitea
│           ├── defaults
│           │   └── main.yml
│           ├── files
│           │   └── Dockerfile
│           ├── handlers
│           │   └── main.yml
│           ├── meta
│           │   └── main.yml
│           ├── tasks
│           │   ├── gitea_install.yml
│           │   └── main.yml
│           ├── templates
│           │   ├── docker.sources.j2
│           │   └── gitea.conf.j2
│           └── vars
│               └── main.yml
├── Dockerfile
├── README.md
└── ssh
    ├── id_ed25519
    └── id_ed25519.pub

19 directories, 24 files
