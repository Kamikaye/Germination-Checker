# Germination-Checker
Manual, Semi-Manual and automatic plant germination analysis

Checking germination rates of plants (in soil or on paper in petridishes) can be inaccurate if done manually. One also can't
check on the plants in person every hour. 
Always looking at the specimen at the same time in person can be averted by using setups like a DSLR Cam with a timer or a 
Raspberry-Pi with a camera-module. Analyzing the resulting stack of images can be made easier with the ImageJ macros presented
here. 

Stack-Oscilate - A simple hotkey-able macro that loops the sorrounding frames of your currently watched frame, thus creates
an animation that makes spotting ground-breaking or germination easier than in still images.

Semi-Auto Germination Checker - In case one has a lot of different species in an germination-experiment (and has marked them with
ROIs and saved that list with ImageJ) there is the Semi-Auto version. It will ask for the location of the image, the
location of the ROI file (or prompt to create a list on the spot) and timepoints of interest. Then it will iterate through
species-ROIs by timepoints and awaits hotkey inputs for YES or NO in regards of germination. It'll print YES cases with 
species-ROI name and time into the log in a csv. compliant format. 

Full-auto Germination Checker - It still needs the species ROIs in order to work through the image stack and add correct lines 
to the log. But apart from that it should work it's way through the stack. However: Unsupervised analysis with basic methods
like color thresholding (which is applied applied here [1]) can miss specimen that do not fit within the pre-defined parameters. 
In this case the paramateswere optimized to work on the present Raspberry-Pi derived images generated in a Conviron climate cabinet
with a set of warm and cold neon illumination. 

Full-auto Germination Checker for static flourescence images - Will also need a set of ROIs to work with. It executes a simple 
check for a bright signal in the designated ROI and log the filename+ROI Name+timeepoint in a csv.-compliant format. Due to the
nature of static-flourescence pictures emerging seedlings can be detected easily. 


[1] Why choose a  color-dependant method for now ?

I explored a non color-dependant method of creating the difference of stack-images from the starting image. But with
soil-experiments the soil shifts slightly over the course of 150 hours in this case. Thus changing its texture constantly and
generating a layer of after-difference noise encasing the emerging seedlings, rendering simple detection methods like tresholding
and particle analysis to detect them unreliable. 
