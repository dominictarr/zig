const Foo = extern struct {
    derp: i32,
};
export fn foo(a: *i32) *Foo {
    return @fieldParentPtr(Foo, "a", a);
}

// error
// backend=stage1
// target=native
//
// tmp.zig:5:33: error: struct 'Foo' has no field 'a'
