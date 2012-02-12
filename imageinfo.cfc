component table="imageinfo" persistent=true accessors=true {

	property name="imageinfo_id" ormtype="integer" type="numeric" fieldtype="id" generator="native" generated="insert";

	property name="colormodel_id" ormtype="integer" type="numeric" update="false" insert="false" notnull="false";
	property name="colormodel" fieldtype="one-to-one" cfc="colormodel" fkcolumn="colormodel_id" lazy="true" missingRowIgnored="true" cascade="save-update";
	
	property name="size" ormtype="integer" type="numeric" dbdefault="0" default="0";
	
	property name="width" ormtype="integer" type="numeric" dbdefault="0" default="0";
	
	property name="height" ormtype="integer" type="numeric" dbdefault="0" default="0";

	property name="sizekB" formula="SELECT round((i.size/10/10/10),2) FROM imageinfo i WHERE i.imageinfo_id = imageinfo_id";
	
	public any function init() {
		for(var prop in arguments) {
			if(prop eq 'colormodel') {
				var newColorModel = new colormodel(argumentCollection=arguments[prop]);
				setColorModel( newColorModel );
			} else {
				variables[prop] = arguments[prop];
			}
		}
		return this;
	}

}