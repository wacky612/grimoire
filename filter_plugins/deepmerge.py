def deepmerge(a, b):
  if isinstance(a, dict) and isinstance(b, dict):
    for k in b:
      if k in a:
        a[k] = deepmerge(a[k], b[k])
      else:
        a[k] = b[k]
    return a
  elif isinstance(a, list) and isinstance(b, list):
    return a + b
  else:
    raise

class FilterModule(object):
  def filters(self):
    return { 'deepmerge': deepmerge }
