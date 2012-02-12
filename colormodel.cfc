component table="colormodel" persistent=true accessors=true {

	property name="colormodel_id" ormtype="integer" type="numeric" fieldtype="id" generator="native" generated="insert";

	property name="alpha_channel_support" ormtype="org.hibernate.type.BooleanType" type="boolean" dbdefault="false" default="false";
	
	property name="alpha_premultiplied" ormtype="org.hibernate.type.BooleanType" type="boolean" dbdefault="false" default="false";
	
	property name="bits_component_1" ormtype="integer" type="numeric" length="3";
	property name="bits_component_2" ormtype="integer" type="numeric" length="3";
	property name="bits_component_3" ormtype="integer" type="numeric" length="3";
	property name="bits_component_4" ormtype="integer" type="numeric" length="3";

	property name="colormodel_type" ormtype="string" type="string" length="50";
	
	property name="colorspace" ormtype="string" type="string" length="50";
	
	property name="num_color_components" ormtype="integer" type="numeric" length="3";
	property name="num_components" ormtype="integer" type="numeric" length="4";
	property name="pixel_size" ormtype="integer" type="numeric" length="4";
	
	property name="transparency" ormtype="string" type="string" length="20";


	public any function init() {
		for(var prop in arguments) {
			variables[prop] = arguments[prop];
		}
		return this;
	}

	
}