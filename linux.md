# Topic 1: Linux Command Line Basics

## Why This Matters
The terminal is where Git, CI/CD, and servers live. If you cannot navigate the file system without a mouse, you cannot debug deployment errors.

## The File System
Everything is a file or a folder. The file system is a tree:

    /  (Root - the very top)
    │
    ├── home/
    │   └── yourname/          <-- Home directory (~)
    │       └── projects/
    │           └── practice/
    │               └── file.txt
    │
    ├── etc/     (system config)
    └── usr/     (programs)

| Symbol | Meaning | Example |
|---|---|---|
| `/` | Root (top of tree) | `cd /` |
| `~` | Home directory | `cd ~` |
| `..` | One level up | `cd ..` |
| `.` | Current directory | `ls .` |

## Essential Commands

| Command | What it does | Example |
|---|---|---|
| `pwd` | Print working directory | `pwd` |
| `ls` | List files | `ls -la` (long + hidden) |
| `cd` | Change directory | `cd projects` |
| `mkdir` | Make folder | `mkdir -p a/b/c` |
| `touch` | Create empty file | `touch notes.txt` |
| `cp` | Copy | `cp file.txt backup.txt` |
| `mv` | Move / rename | `mv old.txt new.txt` |
| `rm` | Delete | `rm -r folder` (no recycle bin!) |
| `nano` | Text editor | `nano file.txt` |
| `chmod` | Change permissions | `chmod +x script.sh` |

## Understanding `ls -l` Output

    -rw-r--r--   1   yourname  yourname   120   Nov 15 10:30   file.txt
    │└──┬──┘     │   └──┬───┘  └──┬───┘    │         │            │
    │   │        │      │         │        │         │            └── File name
    │   │        │      │         │        │         └── Last modified
    │   │        │      │         │        └── Size in bytes
    │   │        │      │         └── Group
    │   │        │      └── Owner
    │   │        └── Links
    │   └── Permissions (owner/group/others)
    └── Type (- = file, d = directory)

## Permissions: `chmod`

Every file has permissions for **Owner**, **Group**, **Others**. Each can have `r` (read), `w` (write), `x` (execute).

    -rwxr-xr--
    │└┬┘└┬┘└┬┘
    │ │  │  └── Others: r-- (read only)
    │ │  └───── Group:  r-x (read + execute)
    │ └──────── Owner:  rwx (all)
    └────────── Type: - (file)

| Number | Permission |
|---|---|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |
| 0 | --- |

- `chmod +x script.sh` → make executable (needed for `.sh` files)
- `chmod 755 script.sh` → owner rwx, group r-x, others r-x

## Beyond the Basics

| Command | Purpose |
|---|---|
| `grep "text" file.txt` | Search inside files |
| `ls -la \| grep ".txt"` | Pipe: filter output |
| `ls -la > list.txt` | Redirect output to file (overwrite) |
| `ls -la >> list.txt` | Redirect (append) |
| `history` | See past commands |
| `man ls` | Open manual (press `q` to quit) |

## Practice Checklist

- [ ] Navigate to your home directory and create a `practice` folder
- [ ] Create three files and rename one with `mv`
- [ ] Create a subfolder and copy a file into it
- [ ] Create a script `hello.sh` with `echo "Hello"`
- [ ] Run `chmod +x hello.sh` then `./hello.sh`
- [ ] Take a screenshot of `ls -la` showing permissions