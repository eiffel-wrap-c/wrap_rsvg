note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GERROR_STRUCT_API

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

	domain: INTEGER
			-- Access member `domain`
		require
			exists: exists
		do
			Result := c_domain (item)
		ensure
			result_correct: Result = c_domain (item)
		end

	set_domain (a_value: INTEGER) 
			-- Change the value of member `domain` to `a_value`.
		require
			exists: exists
		do
			set_c_domain (item, a_value)
		ensure
			domain_set: a_value = domain
		end

	code: INTEGER
			-- Access member `code`
		require
			exists: exists
		do
			Result := c_code (item)
		ensure
			result_correct: Result = c_code (item)
		end

	set_code (a_value: INTEGER) 
			-- Change the value of member `code` to `a_value`.
		require
			exists: exists
		do
			set_c_code (item, a_value)
		ensure
			code_set: a_value = code
		end

	message:  detachable C_STRING
			-- Access member `message`
		require
			exists: exists
		do
			if attached c_message (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_message (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_message (a_value: C_STRING) 
			-- Change the value of member `message` to `a_value`.
		require
			exists: exists
		do
			set_c_message (item, a_value.item )
		end

feature {NONE} -- Implementation wrapper for struct struct _GError

	sizeof_external: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"sizeof(struct _GError)"
		end

	c_domain (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GError*)$an_item)->domain
			]"
		end

	set_c_domain (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GError*)$an_item)->domain =  (GQuark)$a_value
			]"
		ensure
			domain_set: a_value = c_domain (an_item)
		end

	c_code (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GError*)$an_item)->code
			]"
		end

	set_c_code (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GError*)$an_item)->code =  (gint)$a_value
			]"
		ensure
			code_set: a_value = c_code (an_item)
		end

	c_message (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GError*)$an_item)->message
			]"
		end

	set_c_message (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GError*)$an_item)->message =  (gchar*)$a_value
			]"
		ensure
			message_set: a_value = c_message (an_item)
		end

end
