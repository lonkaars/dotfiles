import gdb
import gdb.prompt

from subprocess import DEVNULL, check_output
from os import environ

class TryCommand(gdb.Command):
  """
  Try evaluating the argument(s) as a regular GDB command, but do not fail if the command fails.
  """

  def __init__(self):
    super().__init__("try", gdb.COMMAND_USER)

  def invoke(self, argument, from_tty):
    try:
      gdb.execute(argument)
    except gdb.error:
      pass

TryCommand()

def custom_prompt() -> str:
  try:
    env = environ
    env["eo"] = "\\["
    env["ec"] = "\\]"
    prompt = check_output(["prompt", "gdb"], text=True, env=env)
    return prompt
  except Exception:
    return "(gdb) "

# add custom prompt ("\P") escape code to extended-prompt
substitute_prompt = gdb.prompt.substitute_prompt
def new_substitute_prompt(prompt: str):
  out = ""
  escape = False
  for char in prompt:
    out += char
    if not escape:
      if char == "\\":
        escape = True
      continue
    escape = False

    if char == "P":
      out = out[:-2] + custom_prompt()

  out = substitute_prompt(out)
  return out

gdb.prompt.substitute_prompt = new_substitute_prompt

