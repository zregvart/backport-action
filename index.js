const { exec } = require('child_process');
exec('./backport', (error, stdout, stderr) => {
  if (error) {
    console.error(`backport error: ${error}`);
    return;
  }
  console.log(stdout);
  console.error(stderr);
});
