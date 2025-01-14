function basicOp(operation, value1, value2)
{
  let r0;
  if (operation=="+") {
    r0 = value1 + value2;
  } else if (operation=="-") {
    r0 = value1 - value2;
  } else if (operation=="*") {
    r0 = value1 * value2;
  } else if (operation=="/") {
    r0 = value1 / value2;
  }
  return r0;
}