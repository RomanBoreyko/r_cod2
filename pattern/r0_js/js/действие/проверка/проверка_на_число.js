function isNumb(r0) {
   return r0 !== "undefined" && typeof(r0) === 'number' && !isNaN(r0) && Number.isInteger(r0)
}