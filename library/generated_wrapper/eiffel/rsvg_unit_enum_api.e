-- enum wrapper
class RSVG_UNIT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rsvg_unit_percent or a_value = rsvg_unit_px or a_value = rsvg_unit_em or a_value = rsvg_unit_ex or a_value = rsvg_unit_in or a_value = rsvg_unit_cm or a_value = rsvg_unit_mm or a_value = rsvg_unit_pt or a_value = rsvg_unit_pc
		end

	rsvg_unit_percent: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_PERCENT"
		end

	rsvg_unit_px: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_PX"
		end

	rsvg_unit_em: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_EM"
		end

	rsvg_unit_ex: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_EX"
		end

	rsvg_unit_in: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_IN"
		end

	rsvg_unit_cm: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_CM"
		end

	rsvg_unit_mm: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_MM"
		end

	rsvg_unit_pt: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_PT"
		end

	rsvg_unit_pc: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"RSVG_UNIT_PC"
		end

end
