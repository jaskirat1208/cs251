var xml_array = new Array();
function create_xml(){
	var student_name = document.getElementById("student").value;
	var area_name = document.getElementById("area").value;
	var faculty_name = document.getElementById("faculty").value;
	var xml_string="\t<aggregate> \n \t \t<student>\n \t \t \t"+ student_name +"\n \t \t</student> \n \t \t<area>\n \t \t \t"+area_name+"\n \t \t</area> \n \t \t<faculty>\n \t \t \t"+faculty_name+"\n \t \t</faculty>\n \t </aggregate>\n"
	xml_array.push(xml_string);
	// console.log(xml_array.length);
	WriteFile();
	// document.getElementById("Xml_contents").innerHTML= xml_string;
}
function WriteFile()
{

// var fh = fopen("~/Desktop/cs 251/assign11/file.txt", 3); // Open the file for writing

	// if(fh!=-1) // If the file has been successfully opened
	// {
		var All="";
		// fwrite(fh,"<interests>\n");
		All+="<interests>\n"
		for (var i = 0; i < xml_array.length; i++)
		{
			// fwrite(fh,xml_array[i]);
			All+=xml_array[i];
		}
		// fwrite(fh,"</interests>");
		All+="</interests>";
		document.getElementById("Xml_contents").innerHTML= All;
		// fclose(fh); 	   	
	// }
	

}