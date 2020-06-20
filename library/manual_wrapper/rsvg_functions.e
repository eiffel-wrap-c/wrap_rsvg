note
	description: "Summary description for {RSVG_FUNCTIONS}."
	date: "$Date$"
	revision: "$Revision$"

class
	RSVG_FUNCTIONS

inherit

	RSVG_FUNCTIONS_API
		rename
			rsvg_handle_new_from_data as rsvg_handle_new_from_data_api
		end

feature -- Access

	rsvg_handle_new_from_data (data: STRING_8; data_len: INTEGER; error: GERROR_STRUCT_API): detachable RSVG_HANDLE_STRUCT_API
			-- https://developer.gnome.org/rsvg/stable/RsvgHandle.html#rsvg-handle-new-from-data
		local
			data_c_string: C_STRING
			l_error: POINTER
		do
			create data_c_string.make (data)
			if attached c_rsvg_handle_new_from_data (data_c_string.item, data_len, $l_error) as l_ptr and then not l_ptr.is_default_pointer then
				error.make_by_pointer (l_error)
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

end
