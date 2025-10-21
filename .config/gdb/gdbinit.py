import gdb

def try_execute(*args):
  try:
    gdb.execute(*args)
  except gdb.error:
    pass

# x86 only
try_execute("set disassembly-flavor intel")

gdb.execute("set debuginfod enabled off")
gdb.execute("set confirm off")

