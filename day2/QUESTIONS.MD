1.  The NNS via governance.

2.  Subnet: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe.  Nodes: 16

3.  Your voting power given those values adds up to 16.875.

4.  Missing import of the Nat libaray from mo:base.  The convert_to_text function doesn't really do anything since it isn't changing actual state nor is it returning any data.   The two top variable values are created but not used.

5.  The show_langauges function wants to show multiple languages at once yet it takes in a single language as a parameter.  On top of that the langaugues array is a mutable array for no reason as there is no updating happening in show_languages.  With all the above said, I would change the languages array back to an immutable array by removing the var keyword and in doing so I would also change the return type of the show_languages function by removing the var keyword as well.  Lastly I would empty the function parameters as the argument language does nothing and is not needed.

6.  The Array.append function is deprecated.  A better way to fix this code is to import the Buffer library and create a new buffer using the languages array's items using the static class Buffer.fromArray function then we can freely add to that buffer any new language that enters the add_language function.  Before returning our new array back we will have to convert that buffer back to an array using the static class Buffer.toArray function.