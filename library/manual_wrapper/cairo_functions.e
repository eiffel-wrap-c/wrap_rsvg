note
	description: "Summary description for {CAIRO_FUNCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CAIRO_FUNCTIONS

inherit

	CAIRO_FUNCTIONS_API
		rename
			cairo_status_to_string as cairo_status_to_string_api
		redefine
			cairo_create
		end


feature -- Access

	cairo_create (target: CAIRO_SURFACE_STRUCT_API):  CAIRO_STRUCT_API
			-- https://www.cairographics.org/manual/cairo-cairo-t.html#cairo-create
		do
			create Result.make_by_pointer ( c_cairo_create (target.item))
		end


	cairo_status_to_string (status: INTEGER): STRING_8
		local
			l_ptr: POINTER
		do
			Result := "Unknown"
			l_ptr := c_cairo_status_to_string (status)
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		ensure
			instance_free: class
		end

end
