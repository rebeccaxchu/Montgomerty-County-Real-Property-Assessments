CREATE SCHEMA IF NOT EXISTS "public";

CREATE  TABLE "public".dim_locations ( 
	zipcode              bigint  NOT NULL  ,
	city                 text    ,
	CONSTRAINT pk_dim_locations PRIMARY KEY ( zipcode )
 );

CREATE  TABLE "public".dim_property ( 
	property_id          bigint    ,
	latitude             double precision    ,
	longitude            double precision    ,
	city                 text    ,
	zipcode              bigint    ,
	dwelling_condition   text    ,
	dwelling_grade_code_and_description text    ,
	field_depth          bigint    ,
	field_width          bigint    ,
	land_area            double precision    ,
	land_unit_of_measure text    ,
	number_of_dwelling_units bigint    ,
	number_of_stories    bigint    ,
	set_no               bigint    ,
	structure_area_sq_ft bigint    ,
	subset_no            bigint    ,
	year_built           bigint    ,
	building_style       text    ,
	dwelling_construction text    ,
	dwelling_type        text    ,
	valuation_unit       text    ,
	permit_type          text    ,
	land_use             text    ,
	commercial_industrial_influence text    ,
	historical_influence text    ,
	waterfront_location  text    ,
	street_paved         text    ,
	utilities_sewer      text    ,
	utilities_water      double precision    
 );

CREATE  TABLE "public".dim_table ( 
	dwelling_condition   text    ,
	dwelling_condition_id bigint    
 );

CREATE  TABLE "public".fact ( 
	fact_id              bigint    ,
	base_cycle_data_date double precision    ,
	prior_assessment_total bigint    ,
	current_cycle_data_date double precision    ,
	current_assessment_total bigint    ,
	value_change         bigint    ,
	percentage_change    double precision    ,
	field_depth          bigint    ,
	field_width          bigint    ,
	land_area            double precision    ,
	latitude             double precision    ,
	longitude            double precision    ,
	number_of_dwelling_units bigint    ,
	number_of_stories    bigint    ,
	property_id          bigint    ,
	set_no               bigint    ,
	structure_area_sq_ft bigint    ,
	subset_no            bigint    ,
	utilities_water      double precision    ,
	year_built           bigint    ,
	zipcode              bigint    ,
	commercial_industrial_influence_id bigint    ,
	dwelling_condition_id bigint    ,
	dwelling_construction_id double precision    ,
	dwelling_grade_code_and_description_id bigint    ,
	dwelling_type_id     bigint    ,
	permit_type_id       bigint    ,
	street_paved_id      bigint    ,
	utilities_sewer_id   bigint    ,
	valuation_unit_id    double precision    ,
	waterfront_location_id double precision    ,
	CONSTRAINT unq_fact_commercial_industrial_influence_id UNIQUE ( commercial_industrial_influence_id ) ,
	CONSTRAINT unq_fact_dwelling_condition_id UNIQUE ( dwelling_condition_id ) ,
	CONSTRAINT unq_fact_dwelling_construction_id UNIQUE ( dwelling_construction_id ) ,
	CONSTRAINT unq_fact_dwelling_grade_code_and_description_id UNIQUE ( dwelling_grade_code_and_description_id ) ,
	CONSTRAINT unq_fact_dwelling_type_id UNIQUE ( dwelling_type_id ) ,
	CONSTRAINT unq_fact_permit_type_id UNIQUE ( permit_type_id ) ,
	CONSTRAINT unq_fact_zipcode UNIQUE ( zipcode ) ,
	CONSTRAINT unq_fact_street_paved_id UNIQUE ( street_paved_id ) ,
	CONSTRAINT unq_fact_utilities_sewer_id UNIQUE ( utilities_sewer_id ) ,
	CONSTRAINT unq_fact_valuation_unit_id UNIQUE ( valuation_unit_id ) ,
	CONSTRAINT unq_fact_waterfront_location_id UNIQUE ( waterfront_location_id ) 
 );

CREATE  TABLE "public".facts ( 
	fact_id              bigint    ,
	base_cycle_data_date double precision    ,
	prior_assessment_total bigint    ,
	current_cycle_data_date double precision    ,
	current_assessment_total bigint    ,
	value_change         bigint    ,
	percentage_change    double precision    
 );

CREATE  TABLE "public".md_property ( 
	land_use_code_mdp_field_lu_desclu_sdat_field_50 text    ,
	new_construction_data_county_assessment_credit_sdat_field_192 bigint    ,
	parent_account_number_account_number_sdat_field_388 double precision    ,
	additional_c_a_m_a_data_dwelling_construction_code_mdp_field_st text    ,
	last_activity_date_yyyy_mm_dd_sdat_field_392 text    ,
	base_cycle_data_improvements_value_sdat_field_155 bigint    ,
	base_cycle_data_preferential_land_value_sdat_field_156 bigint    ,
	parent_account_number_district_ward_sdat_field_387 double precision    ,
	special_dates_and_data_inchoate_lien_date_yyyy_mm_dd_sdat_field text    ,
	record_key_owner_occupancy_code_mdp_field_ooi_sdat_field_6 text    ,
	property_factors_influence_commer_indust_mdp_field_pfic_sdat_fi text    ,
	sales_segment_2_how_conveyed_ind_sdat_field_107 text    ,
	tax_roll_values_municipal_assessment_sdat_field_249 bigint    ,
	assessment_credit_program_previous_municipal_assmt_cr_sdat_fiel bigint    ,
	sales_segment_1_mortgage_mdp_field_mortgag1_sdat_field_92 bigint    ,
	assessment_credit_program_previous_county_assmt_cr_sdat_field_1 bigint    ,
	c_a_m_a_system_data_subset_no_sdat_field_237 bigint    ,
	property_factors_utilities_sewer_mdp_field_pfus_sdat_field_64 text    ,
	assessment_credit_program_previous_state_assmt_cr_sdat_field_19 bigint    ,
	plat_reference_folio_mdp_field_pltfolio_sdat_field_268 bigint    ,
	property_factors_influence_historical_mdp_field_pfih_sdat_field text    ,
	multi_parent_account_ind_sdat_field_55 text    ,
	current_assessment_year_circuit_breaker_phase_in_value_sdat_fie bigint    ,
	county_name_mdp_field_cntyname text    ,
	sales_segment_3_grantor_deed_reference_1_folio_sdat_field_123 double precision    ,
	current_cycle_data_improvements_value_mdp_field_names_nfmimpvl_ bigint    ,
	tax_roll_values_homeowner_program_county_liab_sdat_field_254 bigint    ,
	premise_address_zip_4_code_mdp_field_premzip2_sdat_field_27 double precision    ,
	special_dates_and_data_country_club_assmt_date_yyyy_mm_dd_sdat_ text    ,
	full_and_partial_exemptions_municipal_exempt_assessment_sdat_fi bigint    ,
	c_a_m_a_system_data_effective_depth_mdp_field_depth_sdat_field_ bigint    ,
	additional_c_a_m_a_data_land_valuation_unit_sdat_field_266 text    ,
	sales_segment_1_grantor_deed_reference_1_liber_mdp_field_gr1lib double precision    ,
	sales_segment_1_consideration_mdp_field_considr1_sdat_field_90 bigint    ,
	map_mdp_field_map_sdat_field_42 text    ,
	sales_segment_3_mkt_improvement_value_sdat_field_136 bigint    ,
	assessment_credit_program_current_county_assmt_cr_sdat_field_19 bigint    ,
	sales_segment_3_mkt_land_value_sdat_field_135 bigint    ,
	sales_segment_3_consideration_sdat_field_130 bigint    ,
	property_factors_street_paved_mdp_field_pfsp_sdat_field_67 text    ,
	additional_c_a_m_a_data_dwelling_type_mdp_field_strubldg_sdat_f text    ,
	county_system_property_code_sdat_field_56 double precision    ,
	new_construction_data_activity_tax_year_as_of_july_1_sdat_field bigint    ,
	full_and_partial_exemptions_prior_exempt_municipal_assmt_sdat_f bigint    ,
	tax_roll_values_state_assessment_credit_sdat_field_250 bigint    ,
	c_a_m_a_system_data_effective_width_mdp_field_width_sdat_field_ bigint    ,
	full_and_partial_exemptions_prior_exempt_municipal_percent_sdat bigint    ,
	plat_reference_liber_mdp_field_pltliber_sdat_field_267 text    ,
	special_dates_and_data_tax_court_date_yyyy_mm_dd_sdat_field_225 text    ,
	base_cycle_data_date_inspected_yyyy_mm_sdat_field_159 double precision    ,
	full_and_partial_exemptions_county_exempt_assessment_sdat_field bigint    ,
	new_construction_data_base_land_value_sdat_field_184 bigint    ,
	base_cycle_data_land_value_sdat_field_154 bigint    ,
	sales_segment_2_mkt_improvement_value_sdat_field_116 bigint    ,
	assessment_cycle_year_sdat_field_399 bigint    ,
	prior_assessment_year_total_assessment_sdat_field_161 bigint    ,
	file_record_type_sdat_field_400 text    ,
	special_dates_and_data_appeal_board_date_yyyy_mm_dd_sdat_field_ text    ,
	town_code_mdp_field_towncode_desctown_sdat_field_36 text    ,
	tax_class_sdat_field_58 bigint    ,
	record_key_district_ward_sdat_field_2 bigint    ,
	special_dates_and_data_letter_of_intent_date_yyyy_mm_dd_sdat_fi text    ,
	sales_segment_2_transfer_date_yyyy_mm_dd_sdat_field_109 text    ,
	tax_roll_values_county_assessment_credit_sdat_field_251 bigint    ,
	jurisdiction_code_mdp_field_jurscode text    ,
	tax_roll_values_municipal_assessment_credit_sdat_field_252 bigint    ,
	full_and_partial_exemptions_state_exempt_assessment_sdat_field_ bigint    ,
	account_id_mdp_field_acctid bigint    ,
	base_cycle_data_date_assessed_yyyy_mm_sdat_field_158 double precision    ,
	subdivision_code_mdp_field_subdivsn_sdat_field_37 bigint    ,
	additional_c_a_m_a_data_building_style_code_and_description_mdp text    ,
	premise_address_number_mdp_field_premsnum_sdat_field_20 bigint    ,
	record_deletion_date_yyyy_mm_dd_sdat_field_398 text    ,
	current_cycle_data_assessor_code_mdp_field_assessor_sdat_field_ double precision    ,
	special_dates_and_data_fcma_code_mdp_field_fcmacode_sdat_field_ text    ,
	ad_valorem_code_sdat_field_62 bigint    ,
	sales_segment_3_how_conveyed_ind_sdat_field_127 text    ,
	assessment_credit_program_current_municipal_assmt_cr_sdat_field bigint    ,
	assessment_credit_program_prior_year_3_municipal_assmt_cr_sdat_ bigint    ,
	special_dates_and_data_rezoned_reality_date_yyyy_mm_dd_mdp_fiel text    ,
	property_factors_utilities_water_mdp_field_pfuw_sdat_field_63 double precision    ,
	current_cycle_data_preferential_land_value_sdat_field_166 bigint    ,
	special_dates_and_data_non_perc_area_mdp_field_nprcarea_sdat_fi double precision    ,
	c_a_m_a_system_data_number_of_dwelling_units_mdp_field_bldg_uni bigint    ,
	tax_roll_values_state_assessment_sdat_field_248 bigint    ,
	record_key_geographic_code_mdp_field_geogcode_sdat_field_5 bigint    ,
	current_cycle_data_date_inspected_yyyy_mm_mdp_field_lastinsp_sd double precision    ,
	full_and_partial_exemptions_prior_exempt_county_percent_sdat_fi bigint    ,
	tax_roll_values_county_assessment_sdat_field_247 bigint    ,
	premise_address_zip_code_mdp_field_premzip_sdat_field_26 text    ,
	tax_roll_values_homeowner_program_total_credit_sdat_field_253 bigint    ,
	sales_segment_1_how_conveyed_ind_mdp_field_convey1_sdat_field_8 text    ,
	special_dates_and_data_non_perc_test_date_yyyy_mm_dd_mdp_field_ text    ,
	property_factors_location_waterfront_mdp_field_pflw_sdat_field_ text    ,
	premise_address_city_mdp_field_premcity_sdat_field_25 text    ,
	special_dates_and_data_country_club_extension_date_yyyy_mm_dd_s text    ,
	full_and_partial_exemptions_municipal_exempt_percentage_sdat_fi bigint    ,
	current_assessment_year_total_phase_in_value_sdat_field_171 bigint    ,
	sales_segment_3_mortgage_sdat_field_132 bigint    ,
	sales_segment_3_grantor_deed_reference_1_liber_sdat_field_122 double precision    ,
	c_a_m_a_system_data_set_no_sdat_field_236 bigint    ,
	c_a_m_a_system_data_year_built_yyyy_mdp_field_yearblt_sdat_fiel bigint    ,
	special_dates_and_data_country_club_expiration_date_yyyy_mm_dd_ text    ,
	property_factors_street_unpaved_mdp_field_pfsu_sdat_field_68 text    ,
	special_dates_and_data_ag_tax_liab_due_date_yyyy_mm_dd_sdat_fie text    ,
	full_and_partial_exemptions_state_exempt_percentage_sdat_field_ bigint    ,
	current_cycle_data_land_value_mdp_field_names_nfmlndvl_curlndvl bigint    ,
	new_construction_data_proposed_improvement_value_sdat_field_187 bigint    ,
	sales_segment_1_mkt_improvement_value_sdat_field_96 bigint    ,
	record_creation_date_yyyy_mm_dd_sdat_field_397 text    ,
	c_a_m_a_system_data_land_unit_of_measure_mdp_field_luom_sdat_fi text    ,
	c_a_m_a_system_data_structure_area_sq_ft_mdp_field_sqftstrc_sda bigint    ,
	special_dates_and_data_enterprise_zone_date_yyyy_mm_dd_mdp_fiel text    ,
	county_service_code_sdat_field_57 double precision    ,
	tax_roll_values_tax_year_as_of_july_1_sdat_field_246 bigint    ,
	base_cycle_data_circuit_breaker_value_sdat_field_157 bigint    ,
	sales_segment_2_grantor_deed_reference_1_folio_sdat_field_103 double precision    ,
	sales_segment_1_transfer_date_yyyy_mm_dd_mdp_field_tradate_sdat text    ,
	current_assessment_year_circuit_breaker_assessment_sdat_field_1 bigint    ,
	prior_assessment_year_circuit_breaker_assessment_sdat_field_163 bigint    ,
	assessment_credit_program_prior_year_3_state_assmt_cr_sdat_fiel bigint    ,
	sales_segment_3_transfer_number_sdat_field_119 bigint    ,
	new_construction_data_proposed_land_value_sdat_field_186 bigint    ,
	sales_segment_2_transfer_number_sdat_field_99 bigint    ,
	plat_number_mdp_field_plat_sdat_field_38 text    ,
	assessment_credit_program_prior_year_3_county_assmt_cr_sdat_fie bigint    ,
	sales_segment_2_mkt_land_value_sdat_field_115 bigint    ,
	sales_segment_1_mkt_land_value_sdat_field_95 bigint    ,
	record_key_county_code_sdat_field_1 bigint    ,
	record_key_account_number_sdat_field_3 bigint    ,
	special_dates_and_data_enterprise_zone_assessment_mdp_field_ent bigint    ,
	full_and_partial_exemptions_county_exempt_percentage_sdat_field bigint    ,
	premise_address_name_mdp_field_premsnam_sdat_field_23 text    ,
	full_and_partial_exemptions_prior_exempt_state_assessment_sdat_ bigint    ,
	bpruc_public_use_code_mdp_field_ciuse_descciuse_sdat_field_61 bigint    ,
	special_dates_and_data_zoning_change_date_yyyy_mm_dd_mdp_field_ text    ,
	exempt_class_mdp_field_exclass_descexcl_sdat_field_49 text    ,
	recreational_influence_ind_mdp_field_recind_sdat_field_60 bigint    ,
	c_a_m_a_system_data_land_area_mdp_field_landarea_sdat_field_242 double precision    ,
	tax_roll_values_tax_roll_billing_date_yyyy_mm_dd_sdat_field_257 text    ,
	zoning_code_mdp_field_zoning_sdat_field_45 text    ,
	tax_roll_values_homeowner_program_municp_liab_sdat_field_255 bigint    ,
	current_cycle_data_date_assessed_yyyy_mm_mdp_field_lastassd_sda double precision    ,
	new_construction_data_base_improvement_value_sdat_field_185 bigint    ,
	sales_segment_3_transfer_date_yyyy_mm_dd_sdat_field_129 text    ,
	c_a_m_a_system_data_number_of_stories_mdp_field_bldg_story_sdat bigint    ,
	new_construction_data_state_assessment_credit_sdat_field_193 bigint    ,
	full_and_partial_exemptions_prior_exempt_county_assessment_sdat bigint    ,
	special_dates_and_data_agr_land_preservation_fdn_area_mdp_field double precision    ,
	block_mdp_field_block_sdat_field_40 text    ,
	full_and_partial_exemptions_prior_exempt_state_percent_sdat_fie bigint    ,
	sales_segment_2_mortgage_sdat_field_112 bigint    ,
	new_construction_data_date_updated_yyyy_mm_dd_sdat_field_191 text    ,
	homestead_qualification_date_mdp_field_homqldat_sdat_field_260 text    ,
	current_cycle_data_circuit_breaker_value_sdat_field_167 bigint    ,
	c_a_m_a_system_data_dwelling_condition_code_sdat_field_233 text    ,
	sales_segment_1_grantor_deed_reference_1_folio_mdp_field_gr1fol double precision    ,
	premise_address_type_mdp_field_premstyp_sdat_field_24 text    ,
	sales_segment_2_consideration_sdat_field_110 bigint    ,
	sales_segment_2_grantor_deed_reference_1_liber_sdat_field_102 double precision    ,
	assessment_credit_program_current_state_assmt_cr_sdat_field_197 bigint    ,
	special_dates_and_data_planned_development_date_yyyy_mm_dd_mdp_ text    ,
	new_construction_data_municipal_assessment_credit_sdat_field_19 bigint    ,
	lot_mdp_field_lot_sdat_field_41 text    ,
	current_assessment_year_total_assessment_sdat_field_172 bigint    ,
	sales_segment_1_transfer_number_mdp_field_transno1_sdat_field_7 bigint    ,
	grid_mdp_field_grid_sdat_field_43 text    ,
	additional_c_a_m_a_data_permit_type_mdp_field_permittyp_sdat_fi text    ,
	finder_online_link   text    ,
	mdproperty_view_edition_year_mdp_field_existing text    ,
	field_card_number_field_card_no_primary_mdp_field_fcrd1st5_sdat text    ,
	homestead_qualification_code_mdp_field_homqlcod_sdat_field_259 text    ,
	sales_segment_1_grantor_name_mdp_field_grntnam1_sdat_field_80 text    ,
	field_card_number_field_card_no_subset_3_mdp_field_fcrdnxt2_sda text    ,
	mappable_latitude_and_longitude text    ,
	mdp_street_address_mdp_field_address text    ,
	deed_reference_1_folio_mdp_field_dr1folio_sdat_field_31 double precision    ,
	mdp_longitude_mdp_field_digxcord_converted_to_wgs84 double precision    ,
	field_card_number_field_card_no_secondary_mdp_field_fcrdnxt3_sd text    ,
	legal_description_line_1_mdp_field_legal1_sdat_field_17 text    ,
	mdp_latitude_mdp_field_digycord_converted_to_wgs84 double precision    ,
	assessment_credit_program_current_credit_status_code_sdat_field text    ,
	c_a_m_a_system_data_dwelling_grade_code_and_description_mdp_fie text    ,
	mdp_street_address_city_mdp_field_city text    ,
	deed_reference_1_liber_mdp_field_dr1liber_sdat_field_30 double precision    ,
	mdp_street_address_type_code_mdp_field_resityp text    ,
	field_card_number_field_card_no_subset_4_mdp_field_fcrdlst2_sda text    ,
	assessment_credit_program_previous_credit_status_code_sdat_fiel text    ,
	parcel_mdp_field_parcel_sdat_field_44 text    ,
	real_property_search_link text    ,
	mdp_street_address_zip_code_mdp_field_zipcode double precision    ,
	search_google_maps_for_this_location text    ,
	sales_segment_3_grantor_name_sdat_field_120 text    ,
	sales_segment_2_grantor_name_sdat_field_100 text    ,
	legal_description_line_2_mdp_field_legal2_sdat_field_18 text    ,
	residential_exception_indicator_sdat_field_261 text    ,
	premise_address_condominium_unit_no_sdat_field_28 text    ,
	mdp_street_address_units_mdp_field_strtunt text    ,
	legal_description_line_3_mdp_field_legal3_sdat_field_19 text    ,
	section_mdp_field_section_sdat_field_39 text    ,
	premise_address_direction_mdp_field_premsdir_sdat_field_22 text    ,
	special_dates_and_data_non_perc_area_unit_mdp_field_nprcluom_sd text    ,
	base_cycle_data_assessor_code_sdat_field_160 double precision    ,
	premise_address_number_suffix_sdat_field_21 text    ,
	record_key_subdistrict_sdat_field_4 double precision    ,
	municipal_tax_class_sdat_field_59 double precision    ,
	sales_segment_1_grantor_deed_reference_1_clerk_initials_mdp_fie text    ,
	special_dates_and_data_critical_area_code_mdp_field_crtarcod_sd text    ,
	sales_segment_2_grantor_deed_reference_1_clerk_initials_sdat_fi text    
 );

CREATE  TABLE "public".dim_commercial_industrial_influence ( 
	commercial_industrial_influence text    ,
	commercial_industrial_influence_id bigint  NOT NULL  ,
	CONSTRAINT unq_dim_commercial_industrial_influence_commercial_industrial_influence_id UNIQUE ( commercial_industrial_influence_id ) ,
	CONSTRAINT pk_dim_commercial_industrial_influence PRIMARY KEY ( commercial_industrial_influence_id )
 );

CREATE  TABLE "public".dim_dwelling_condition ( 
	dwelling_condition   text    ,
	dwelling_condition_id bigint  NOT NULL  ,
	CONSTRAINT pk_dim_dwelling_condition PRIMARY KEY ( dwelling_condition_id )
 );

CREATE  TABLE "public".dim_dwelling_construction ( 
	dwelling_construction text    ,
	dwelling_construction_id bigint  NOT NULL  ,
	CONSTRAINT pk_dim_dwelling_construction PRIMARY KEY ( dwelling_construction_id )
 );

CREATE  TABLE "public".dim_dwelling_grade_code_and_description ( 
	dwelling_grade_code_and_description text    ,
	dwelling_grade_code_and_description_id bigint  NOT NULL  ,
	CONSTRAINT pk_dim_dwelling_grade_code_and_description PRIMARY KEY ( dwelling_grade_code_and_description_id )
 );

CREATE  TABLE "public".dim_dwelling_type ( 
	dwelling_type        text    ,
	dwelling_type_id     bigint  NOT NULL  ,
	CONSTRAINT pk_dim_dwelling_type PRIMARY KEY ( dwelling_type_id )
 );

CREATE  TABLE "public".dim_permit_type ( 
	permit_type          text    ,
	permit_type_id       bigint  NOT NULL  ,
	CONSTRAINT pk_dim_permit_type PRIMARY KEY ( permit_type_id )
 );

CREATE  TABLE "public".dim_street_paved ( 
	street_paved         text    ,
	street_paved_id      bigint  NOT NULL  ,
	CONSTRAINT pk_dim_street_paved PRIMARY KEY ( street_paved_id )
 );

CREATE  TABLE "public".dim_utilities_sewer ( 
	utilities_sewer      text    ,
	utilities_sewer_id   bigint  NOT NULL  ,
	CONSTRAINT pk_dim_utilities_sewer PRIMARY KEY ( utilities_sewer_id )
 );

CREATE INDEX idx_dim_utilities_sewer ON "public".dim_utilities_sewer  ( utilities_sewer_id );

CREATE  TABLE "public".dim_valuation_unit ( 
	valuation_unit       text    ,
	valuation_unit_id    bigint  NOT NULL  ,
	CONSTRAINT pk_dim_valuation_unit PRIMARY KEY ( valuation_unit_id )
 );

CREATE INDEX idx_dim_valuation_unit ON "public".dim_valuation_unit  ( valuation_unit_id );

CREATE  TABLE "public".dim_waterfront_location ( 
	waterfront_location  text    ,
	waterfront_location_id bigint  NOT NULL  ,
	CONSTRAINT pk_dim_waterfront_location PRIMARY KEY ( waterfront_location_id )
 );

ALTER TABLE "public".dim_commercial_industrial_influence ADD CONSTRAINT fk_dim_commercial_industrial_influence_fact FOREIGN KEY ( commercial_industrial_influence_id ) REFERENCES "public".fact( commercial_industrial_influence_id );

ALTER TABLE "public".dim_dwelling_condition ADD CONSTRAINT fk_dim_dwelling_condition_fact FOREIGN KEY ( dwelling_condition_id ) REFERENCES "public".fact( dwelling_condition_id );

ALTER TABLE "public".dim_dwelling_construction ADD CONSTRAINT fk_dim_dwelling_construction_fact FOREIGN KEY ( dwelling_construction_id ) REFERENCES "public".fact( dwelling_construction_id );

ALTER TABLE "public".dim_dwelling_grade_code_and_description ADD CONSTRAINT fk_dim_dwelling_grade_code_and_description_fact FOREIGN KEY ( dwelling_grade_code_and_description_id ) REFERENCES "public".fact( dwelling_grade_code_and_description_id );

ALTER TABLE "public".dim_dwelling_type ADD CONSTRAINT fk_dim_dwelling_type_fact FOREIGN KEY ( dwelling_type_id ) REFERENCES "public".fact( dwelling_type_id );

ALTER TABLE "public".dim_permit_type ADD CONSTRAINT fk_dim_permit_type_fact FOREIGN KEY ( permit_type_id ) REFERENCES "public".fact( permit_type_id );

ALTER TABLE "public".dim_street_paved ADD CONSTRAINT fk_dim_street_paved_fact FOREIGN KEY ( street_paved_id ) REFERENCES "public".fact( street_paved_id );

ALTER TABLE "public".dim_utilities_sewer ADD CONSTRAINT fk_dim_utilities_sewer_fact FOREIGN KEY ( utilities_sewer_id ) REFERENCES "public".fact( utilities_sewer_id );

ALTER TABLE "public".dim_valuation_unit ADD CONSTRAINT fk_dim_valuation_unit_fact FOREIGN KEY ( valuation_unit_id ) REFERENCES "public".fact( valuation_unit_id );

ALTER TABLE "public".dim_waterfront_location ADD CONSTRAINT fk_dim_waterfront_location_fact FOREIGN KEY ( waterfront_location_id ) REFERENCES "public".fact( waterfront_location_id );
