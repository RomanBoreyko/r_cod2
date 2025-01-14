export const isPlainObject = (element)
 => typeof element === 'object' && !Array.isArray(element) && element !== null;