# Arch32iso
Files to make a lightweight Arch Linux 32 ISO for i686 systems with under 256MB of ram with some QOL tools.
I've tested it down to 192MB of ram but it *should* be able to run down to 164MB? the FS is like 135MB. so no, it cant even run in 128MB... (i tried... it just dies)

So, using the I486 packages lets you get down to a wimpy 128MB (instead of *needing* 192MB) but its runing on a fairly old kernel version and has... nothing?
i mean i striped *everything* from the iso like theres no filesystem tools (except ext2) stripped everything. oh and ping? nope! just pray your internet works i guess? or don't. i even stripped out the base package! (its replaced by ~half of its deps) tar? nope. xz? nope. bzip? you wish. theres nothing here... except the *bare minimum* to install, and i truly mean the bare minimum its also *insanely* compressed like i turned on ultra mode with zstd for lvl 22 compressed.
## How to run it?
just run `makeiso.sh` and boom! it does everything for you!
Intended to run under Arch Linux or Arch Linux 32
