//Germination Assay Assistant
//Oscicalltes around selected slice to make tiny seedling movements detectable

altkey = false;
slice = getSliceNumber();

do   {
  Stack.setSlice(slice-1);
  wait(100);
  Stack.setSlice(slice);
  wait(100);
  Stack.setSlice(slice+1);
  wait(100);
  if (isKeyDown("alt") == true) altkey = true;
} while (altkey == false);

exit();