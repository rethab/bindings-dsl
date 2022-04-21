# bindings-dsl

Changes in 1.0.19

* Add a change log.

* Support unsafe calls with experimental #ccall_unsafe.

Changes in 1.0.18 (This version has a bug. Marked as such in Hackage)

* Introduce a silly bug to solve a problem that does not exist.

Changes in 1.0.17

* Add Bindings.Utilities module for general utilities.

* Change repository to git.

* Don't underestimate size of field arrays with dimension >= 2.

* Change #callback to #callback_t.

* Keep source of bindings-* libraries with bindings-DSL.

* Add examples used in tutorial.

Changes in 1.0.16

* Use correct value for Storable alignment instead of copying sizeOf.

Changes in 1.0.15

* New hsc2hs template doesn't include some headers, so include it ourselves.

Changes in 1.0.14

* Add functions to get pointers to fields from pointers to structures.
