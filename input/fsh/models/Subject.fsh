// -------------------------------------------------------------------------------				
//  Logical Model				Subject.fsh
// -------------------------------------------------------------------------------				
Logical: SubjectEpEhn				
Id: Subject				
Title: "A.1.1 Patient administrative data"				
Description:  """Patient. Sections A1.1 of the eHN guideline."""				
* familyName 0..* string "A.1.1.1 Familyname/surname" """The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""				
* givenName 0..* string "A.1.1.2 Given name" """The given name/first name of the patient (also known as forename or first 
name) [ISO TS 22220:2011]. This field can contain more than one element."""				
* dateOfBirth 0..1 dateTime "A.1.1.3 Date of birth" """The date of birth of the patient [ISO TS 22220:2011].
This field may contain only the year if the day and month are not available, 
e.g.: 2009 - Preferred system(s): ISO 8601 """		 		
* identifier 0..1 Identifier "A.1.1.4 Personal identifier" """Country ID, unique to the patient in that country. Example: ID for a Portuguese patient, national healthcare patient ID. Multiple identifiers could be provided."""				
* gender 0..1 CodeableConcept "A.1.1.5 Gender" """This field must contain a recognised valid value for 'administrative gender'. 
If different, 'physiological sex' should be communicated elsewhere."""
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred
* nativeLanguage 0..* CodeableConcept "A.1.1.6 Native language"	"""The native language of the patient. This may be important for the information that is given to the patient regarding use of the prescribed product [N1228 ISO NP TS 17251]"""
  * ^binding.description = "ISO 639"
  * ^binding.strength = #preferred
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
