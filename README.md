# volume-backup

Backup the content of voluems to each a .tar.gz file in the /backups directory.
It will backup the volumes every day at 4am.

## Usage

```bash
docker run --rm -v volume_to_backup1:/volumes/volume_to_backup1 -v volume_to_backup2:/volumes/volume_to_backup2 -v /backup-location:/backups ghcr.io/dattito/volume-backup
```
