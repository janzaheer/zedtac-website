# How this site goes live

**The rule: pushing to `main` publishes the site. Nothing else does.**

The repo is `janzaheer/zedtac-website` and it is the `origin` remote, so a
plain push from VS Code or the terminal goes there. Netlify watches `main`
and publishes every push. No build step, no upload-from-laptop step -- the
live site is always exactly what is committed on `main`.

## Publishing a change

Either one works, they do the same thing:

- **VS Code** -- write the change, type a message, hit **Commit**. It pushes
  by itself (`.vscode/settings.json` sets `git.postCommitCommand: sync`).
- **Terminal** -- `./publish.sh "what you changed"`

Live in about a minute. Progress: https://app.netlify.com -> Deploys.

## One-time setup -- these need your browser, no one else can do them

### 1. Connect Netlify to GitHub

1. https://app.netlify.com -> log in.
2. **Add new site** -> **Import an existing project** -> **GitHub**.
3. Authorise Netlify, pick `janzaheer/zedtac-website`.
4. Set **Branch to deploy** = `main`. Leave the build command empty and the
   publish directory `.` -- `netlify.toml` already declares both.
5. **Deploy**. You get a `something-random.netlify.app` URL. Open it and
   check the site loads. Rename it under Site configuration -> Site details.

At this point the site is live on the netlify.app URL and every push to
`main` republishes it. Step 2 only swaps in the real domain.

### 2. Point zedtac.com at it

`zedtac.com` currently serves GoDaddy's parked "lander" page. Its DNS mixes
one Netlify address with two GoDaddy forwarding addresses, which is why
`https://zedtac.com` fails its certificate check today.

In Netlify: **Domain management** -> **Add a domain** -> `zedtac.com`.

Then at GoDaddy (DNS is on `ns59/ns60.domaincontrol.com`):

- Turn **off** domain forwarding / parking. This is what serves the lander
  page, and it will keep overriding the records below until it is off.
- **A** record, host `@` -> `75.2.60.5` -- and delete the other two A
  records (`3.33.130.190`, `15.197.148.33`). They are GoDaddy's forwarders.
  Requests currently round-robin between all three, so even once Netlify is
  connected the site would load only about a third of the time.
- **CNAME** record, host `www` -> your `<site-name>.netlify.app`

DNS takes anywhere from minutes to a few hours. Netlify issues the HTTPS
certificate by itself once the records resolve.

### 3. Check it

    curl -sI https://zedtac.com | head -1

`HTTP/2 200` means done.

## Remotes

- `origin` -> `janzaheer/zedtac-website` -- the live one. Push here.
- `shahid-badini` -> `shahid-badini/zedtac-website` -- the older copy, kept
  so nothing is stranded. Nothing deploys from it.

## Branches

`main` is the deploy branch. Anything else pushes to GitHub without touching
the live site, which is what you want for work in progress. Merge into `main`
when it is ready to ship.
