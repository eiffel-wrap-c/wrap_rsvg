note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GTYPE_INSTANCE_STRUCT_API

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

	g_class: detachable GTYPE_CLASS_STRUCT_API 
			-- Access member `g_class`
		require
			exists: exists
		do
			if attached c_g_class (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_g_class (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_g_class (item) 
		end

	set_g_class (a_value: GTYPE_CLASS_STRUCT_API) 
			-- Set member `g_class`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_g_class (item, a_value.item)
		ensure
			g_class_set: attached g_class as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct struct _GTypeInstance

	sizeof_external: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"sizeof(struct _GTypeInstance)"
		end

	c_g_class (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GTypeInstance*)$an_item)->g_class
			]"
		end

	set_c_g_class (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GTypeInstance*)$an_item)->g_class =  (GTypeClass*)$a_value
			]"
		ensure
			g_class_set: a_value = c_g_class (an_item)
		end

end
