note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GINPUT_STREAM_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	parent_instance: GOBJECT_STRUCT_API
			-- Access member `parent_instance`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_parent_instance(item) )
		ensure
			result_not_void: Result.item = c_parent_instance (item) 
		end

	set_parent_instance (a_value: GOBJECT_STRUCT_API) 
			-- Set member `parent_instance`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_parent_instance (item, a_value.item)
		ensure
			parent_instance_set: parent_instance.item = a_value.item
		end

	priv: detachable GINPUT_STREAM_PRIVATE_STRUCT_API 
			-- Access member `priv`
		require
			exists: exists
		do
			if attached c_priv (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_priv (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_priv (item) 
		end

	set_priv (a_value: GINPUT_STREAM_PRIVATE_STRUCT_API) 
			-- Set member `priv`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_priv (item, a_value.item)
		ensure
			priv_set: attached priv as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct struct _GInputStream

	sizeof_external: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"sizeof(struct _GInputStream)"
		end

	c_parent_instance (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				&((struct _GInputStream*)$an_item)->parent_instance
			]"
		end

	set_c_parent_instance (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GInputStream*)$an_item)->parent_instance =  *(GObject*)$a_value
			]"
		end

	c_priv (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GInputStream*)$an_item)->priv
			]"
		end

	set_c_priv (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GInputStream*)$an_item)->priv =  (GInputStreamPrivate*)$a_value
			]"
		ensure
			priv_set: a_value = c_priv (an_item)
		end

end
