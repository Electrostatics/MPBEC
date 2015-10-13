function varargout = Welcome(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Welcome_OpeningFcn, ...
                   'gui_OutputFcn',  @Welcome_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Welcome is made visible.
function Welcome_OpeningFcn(hObject, eventdata, handles, varargin)

set(handles.figure1, 'Name', 'MPBEC, A Matlab Program for Biomolecular Electrostatic Calculations');

% Choose default command line output for Welcome
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Welcome_OutputFcn(hObject, eventdata, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

run GUI
movegui(GUI,'center') 
close (Welcome);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

 run GUI_Beginner
 movegui(GUI_Beginner,'center') 
  str=computer;
if (strcmp(str,'PCWIN')==1 ||strcmp(str,'PCWIN64')==1)
    winopen('beginnerguide.pdf');

end
if (strcmp(str,'GLNX86')==1 ||strcmp(str,'GLNXA64')==1)
status = system('acroread beginnerguide.pdf');
if status~=0
   status1 = system('evince beginnerguide.pdf');
else
    status1=0;
end
if status1~=0
    status2 = system('xpdf beginnerguide.pdf');
else
    status2=0;
end
   if status2~=0
    status3 = system('kpdf beginnerguide.pdf');
   else
       status3=0;
   end
    if status3~=0
    status4 = system('okular beginnerguide.pdf');
    else
        status4=0;
    end
    if status4~=0
    status5 = system('epdfview beginnerguide.pdf');
    else
        status5=0;
    end
    if status5~=0
    msgbox('Sorry. We cannot find a pdf application on your computer.','Sorry','none');
    end
end
if (strcmp(str,'MACI')==1 ||strcmp(str,'MACI64')==1)
    status7 = system('open beginnerguide.pdf');
if status7~=0
   status8 = system('open -a Safari beginnerguide.pdf');
else
    status8=0;
end
    if status8~=0
         status9 = system('acroread beginnerguide.pdf');
else
    status9=0;
    end
    if status9~=0
    msgbox('Sorry. We cannot find a pdf application on your computer.','Sorry','none');
    end
end
close (Welcome);


% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
AA1='MPBEC is a software that performs biomolecular electrostatic calculations. The main goal of this application is to get a better understanding of the effects of biological solutions on biomolecules. This is achieved by providing useful information on the effective range, intensity, and nature of the interaction of biomolecules with the surroundings and other molecules. By using MPBEC you will be able to:'; 
AA2='* Visualize the size, shape and molecular structure of biomolecules in 3D.';
AA3='* Calculate electrostatic potential energies and solvation free energies of single biomolecules in solution to study solvation effects on molecular stability.';
AA4='* Calculate binding free energies between two biomolecules (e.g., protein-ligand) to study molecular affinity.';
AA5='* Calculate and visualize mean electrostatic potentials of biomolecules to study potential electrostatic interactions generated by molecular charge distributions and ionic atmosphere close and far away from the biomolecules.';
AA6='* Calculate pH effects on energetic and electrostatic properties of biomolecules arisen from protonation/deprotonation reactions in the residues exposed to biological solutions.';
AA7='A detailed description of MPBEC and its applications is provided in the user guide documentation. Users with no experience on biomolecular electrostatic calculations are encouraged to initially run MPBEC in the Beginner user level mode where step by step instructions are provided to fill out the minimum information required to perform the calculations. The full capabilities of MPBEC are provided in the Advanced level mode where users are able to customize predefined parameters and preselected algorithms. Please select the user level below. THANKS FOR USING MPBEC !!!.';
argg2 = sprintf([AA1 '\n \n' AA2 '\n \n' AA3 '\n \n' AA4 '\n \n' AA5 '\n \n' AA6 '\n \n' AA7]);
set(hObject,'String',argg2);
