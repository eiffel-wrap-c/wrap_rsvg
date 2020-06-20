-- enum wrapper
class RSVG_HANDLE_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rsvg_handle_flags_none or a_value = rsvg_handle_flag_unlimited or a_value = rsvg_handle_flag_keep_image_data
		end

	rsvg_handle_flags_none: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_HANDLE_FLAGS_NONE"
		end

	rsvg_handle_flag_unlimited: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_HANDLE_FLAG_UNLIMITED"
		end

	rsvg_handle_flag_keep_image_data: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_HANDLE_FLAG_KEEP_IMAGE_DATA"
		end

end
