(module
  (memory 1024 1024)
  (import $waka "somewhere" "waka")
  (import $waka-ret "somewhere" "waka-ret" (result i32))
  (import $waka-ret-d "somewhere" "waka-ret-d" (result f64))
  (func $nada
    (call_import $waka)
    (call_import $waka-ret)
    (call_import $waka-ret-d)
  )
)
