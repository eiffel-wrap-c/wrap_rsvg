note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class RSVG_DIMENSION_DATA_STRUCT_API

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

	width: INTEGER
			-- Access member `width`
		require
			exists: exists
		do
			Result := c_width (item)
		ensure
			result_correct: Result = c_width (item)
		end

	set_width (a_value: INTEGER) 
			-- Change the value of member `width` to `a_value`.
		require
			exists: exists
		do
			set_c_width (item, a_value)
		ensure
			width_set: a_value = width
		end

	height: INTEGER
			-- Access member `height`
		require
			exists: exists
		do
			Result := c_height (item)
		ensure
			result_correct: Result = c_height (item)
		end

	set_height (a_value: INTEGER) 
			-- Change the value of member `height` to `a_value`.
		require
			exists: exists
		do
			set_c_height (item, a_value)
		ensure
			height_set: a_value = height
		end

	em: REAL_64
			-- Access member `em`
		require
			exists: exists
		do
			Result := c_em (item)
		ensure
			result_correct: Result = c_em (item)
		end

	set_em (a_value: REAL_64) 
			-- Change the value of member `em` to `a_value`.
		require
			exists: exists
		do
			set_c_em (item, a_value)
		ensure
			em_set: a_value = em
		end

	ex: REAL_64
			-- Access member `ex`
		require
			exists: exists
		do
			Result := c_ex (item)
		ensure
			result_correct: Result = c_ex (item)
		end

	set_ex (a_value: REAL_64) 
			-- Change the value of member `ex` to `a_value`.
		require
			exists: exists
		do
			set_c_ex (item, a_value)
		ensure
			ex_set: a_value = ex
		end

feature {NONE} -- Implementation wrapper for struct struct _RsvgDimensionData

	sizeof_external: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"sizeof(struct _RsvgDimensionData)"
		end

	c_width (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->width
			]"
		end

	set_c_width (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->width =  (int)$a_value
			]"
		ensure
			width_set: a_value = c_width (an_item)
		end

	c_height (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->height
			]"
		end

	set_c_height (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->height =  (int)$a_value
			]"
		ensure
			height_set: a_value = c_height (an_item)
		end

	c_em (an_item: POINTER): REAL_64
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->em
			]"
		end

	set_c_em (an_item: POINTER; a_value: REAL_64) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->em =  (gdouble)$a_value
			]"
		ensure
			em_set: a_value = c_em (an_item)
		end

	c_ex (an_item: POINTER): REAL_64
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->ex
			]"
		end

	set_c_ex (an_item: POINTER; a_value: REAL_64) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _RsvgDimensionData*)$an_item)->ex =  (gdouble)$a_value
			]"
		ensure
			ex_set: a_value = c_ex (an_item)
		end

end
