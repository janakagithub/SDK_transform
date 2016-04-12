/*
A KBase module: SDK_transform
This module handles the transform of bulk upload.
*/

module SDK_transform {
 /*
       A string representing the flie path
   */
   typedef string file_path;
   /*
       String represent the file_type
   */
   typedef string file_type;
   
   typedef structure {
       string file_path;
       string file_type;
   } GenomeObject;
   
   funcdef transform_script(file_path, file_type) returns (GenomeObject) authentication required;
};
