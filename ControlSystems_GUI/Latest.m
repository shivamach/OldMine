function varargout = Latest(varargin)
% LATEST MATLAB code for Latest.fig
%      LATEST, by itself, creates a new LATEST or raises the existing
%      singleton*.
%
%      H = LATEST returns the handle to a new LATEST or the handle to
%      the existing singleton*.
%
%      LATEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATEST.M with the given input arguments.
%
%      LATEST('Property','Value',...) creates a new LATEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Latest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Latest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Latest

% Last Modified by GUIDE v2.5 26-Apr-2018 11:26:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Latest_OpeningFcn, ...
                   'gui_OutputFcn',  @Latest_OutputFcn, ...
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


% --- Executes just before Latest is made visible.
function Latest_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Latest (see VARARGIN)

% Choose default command line output for Latest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Latest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Latest_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.AXES_1);
global s
global den
global c
xlim([-10 10])
ylim([-10 10])
grid on
c = 0
[x_pole,y_pole]=getpts();
count=numel(x_pole);
plot(x_pole,y_pole,'X');
hold on
s=tf('s')
x_pole = round(x_pole)
 y_pole = round(y_pole)
% for a=1:1:2
%    if (y_pole(a,1)==0)
%       c = c+1
%    end
% end
%den=(s+(x_pole(1,1)+(1i*y_pole(1,1)))) * (s+(x_pole(2,1)+(1i*y_pole(2,1))))
if count==1
    den=(s-(x_pole(1,1)+y_pole(1,1)*i))*(s-(x_pole(1,1)-y_pole(1,1)*i))
elseif count==2
    den=(s-(x_pole(1,1)+y_pole(1,1)*i))*(s-(x_pole(2,1)+y_pole(2,1)*i))*(s-(x_pole(1,1)-y_pole(1,1)*i))*(s-(x_pole(2,1)-y_pole(2,1)*i))
elseif count==3
    den=(s-(x_pole(1,1)+y_pole(1,1)*i))*(s-(x_pole(2,1)+y_pole(2,1)*i))*(s-(x_pole(1,1)-y_pole(1,1)*i))*(s-(x_pole(2,1)-y_pole(2,1)*i))*(s-(x_pole(3,1)+y_pole(3,1)*i))*(s-(x_pole(3,1)-y_pole(3,1)*i))
elseif count==4
    den=(s+(x_pole(1,1)+(1i*y_pole(1,1)))) * (s+(x_pole(2,1)+(1i*y_pole(2,1)))) * (s+(x_pole(3,1)+(1i*y_pole(3,1)))) * (s+(x_pole(4,1)+(1i*y_pole(4,1))))
elseif count==5
    den=(s+(x_pole(1,1)+(1i*y_pole(1,1)))) * (s+(x_pole(2,1)+(1i*y_pole(2,1)))) * (s+(x_pole(3,1)+(1i*y_pole(3,1)))) * (s+(x_pole(4,1)+(1i*y_pole(4,1)))) * (s+(x_pole(5,1)+(1i*y_pole(5,1))))
elseif count==6
    den=(s+(x_pole(1,1)+(1i*y_pole(1,1)))) * (s+(x_pole(2,1)+(1i*y_pole(2,1)))) * (s+(x_pole(3,1)+(1i*y_pole(3,1)))) * (s+(x_pole(4,1)+(1i*y_pole(4,1)))) * (s+(x_pole(5,1)+(1i*y_pole(5,1)))) * (s+(x_pole(6,1)+(1i*y_pole(6,1))))
elseif count==7
    den=(s+(x_pole(1,1)+(1i*y_pole(1,1)))) * (s+(x_pole(2,1)+(1i*y_pole(2,1)))) * (s+(x_pole(3,1)+(1i*y_pole(3,1)))) * (s+(x_pole(4,1)+(1i*y_pole(4,1)))) * (s+(x_pole(5,1)+(1i*y_pole(5,1)))) * (s+(x_pole(7,1)+(1i*y_pole(7,1)))) * (s+(x_pole(7,1)+(1i*y_pole(7,1))))
elseif count==8
    den=(s+(x_pole(1,1)+(1i*y_pole(1,1)))) * (s+(x_pole(2,1)+(1i*y_pole(2,1)))) * (s+(x_pole(3,1)+(1i*y_pole(3,1)))) * (s+(x_pole(4,1)+(1i*y_pole(4,1)))) * (s+(x_pole(5,1)+(1i*y_pole(5,1)))) * (s+(x_pole(7,1)+(1i*y_pole(7,1)))) * (s+(x_pole(7,1)+(1i*y_pole(7,1)))) * (s+(x_pole(8,1)+(1i*y_pole(8,1))))
else
    den=(s+(x_pole(1,1)+(1i*y_pole(1,1)))) * (s+(x_pole(2,1)+(1i*y_pole(2,1)))) * (s+(x_pole(3,1)+(1i*y_pole(3,1)))) * (s+(x_pole(4,1)+(1i*y_pole(4,1)))) * (s+(x_pole(5,1)+(1i*y_pole(5,1)))) * (s+(x_pole(7,1)+(1i*y_pole(7,1)))) * (s+(x_pole(7,1)+(1i*y_pole(7,1)))) * (s+(x_pole(8,1)+(1i*y_pole(8,1)))) * (s+(x_pole(9,1)+(1i*y_pole(9,1))))
end
plot(x_pole,y_pole,'X');
hold on

guidata(hObject,handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.AXES_1);
global num
global m
xlim([-10 10])
ylim([-10 10])
grid on
[x_zero,y_zero]=getpts()
count=numel(x_zero)
plot(x_zero,y_zero,'O');
hold on
s=tf('s');
 x_zero = round(x_zero)
 y_zero = round(y_zero)
m = 0;
hold off
% for a=1:1:2
%    if (y_zero(a,1)==0)
%       m = m+1
%    end
% end
%

if count==1
    num=(s-(x_zero(1,1)+y_zero(1,1)*i))*(s-(x_zero(1,1)-y_zero(1,1)*i))
elseif count==2
    num= (s-(x_zero(1,1)+y_zero(1,1)*i))*(s-(x_zero(2,1)+y_zero(2,1)*i))*(s-(x_zero(1,1)-y_zero(1,1)*i))*(s-(x_zero(2,1)-y_zero(2,1)*i))
elseif count==3
    num=(s-(x_zero(1,1)+y_zero(1,1)*i))*(s-(x_zero(2,1)+y_zero(2,1)*i))*(s-(x_zero(1,1)-y_zero(1,1)*i))*(s-(x_zero(2,1)-y_zero(2,1)*i))*(s-(x_zero(3,1)-y_zero(3,1)*i))*(s-(x_zero(3,1)+y_zero(3,1)*i))
elseif count==4
    num=(s+(x_zero(1,1)+(1i*y_zero(1,1)))) * (s+(x_zero(2,1)+(1i*y_zero(2,1)))) * (s+(x_zero(3,1)+(1i*y_zero(3,1)))) * (s+(x_zero(4,1)+(1i*y_zero(4,1))));
elseif count==5
    num=(s+(x_zero(1,1)+(1i*y_zero(1,1)))) * (s+(x_zero(2,1)+(1i*y_zero(2,1)))) * (s+(x_zero(3,1)+(1i*y_zero(3,1)))) * (s+(x_zero(4,1)+(1i*y_zero(4,1)))) * (s+(x_zero(5,1)+(1i*y_zero(5,1))));
elseif count==6
    num=(s+(x_zero(1,1)+(1i*y_zero(1,1)))) * (s+(x_zero(2,1)+(1i*y_zero(2,1)))) * (s+(x_zero(3,1)+(1i*y_zero(3,1)))) * (s+(x_zero(4,1)+(1i*y_zero(4,1)))) * (s+(x_zero(5,1)+(1i*y_zero(5,1)))) * (s+(x_zero(6,1)+(1i*y_zero(6,1))));
elseif count==7
    num=(s+(x_zero(1,1)+(1i*y_zero(1,1)))) * (s+(x_zero(2,1)+(1i*y_zero(2,1)))) * (s+(x_zero(3,1)+(1i*y_zero(3,1)))) * (s+(x_zero(4,1)+(1i*y_zero(4,1)))) * (s+(x_zero(5,1)+(1i*y_zero(5,1)))) * (s+(x_zero(7,1)+(1i*y_zero(7,1)))) * (s+(x_zero(7,1)+(1i*y_zero(7,1))));
elseif count==8
    num=(s+(x_zero(1,1)+(1i*y_zero(1,1)))) * (s+(x_zero(2,1)+(1i*y_zero(2,1)))) * (s+(x_zero(3,1)+(1i*y_zero(3,1)))) * (s+(x_zero(4,1)+(1i*y_zero(4,1)))) * (s+(x_zero(5,1)+(1i*y_zero(5,1)))) * (s+(x_zero(7,1)+(1i*y_zero(7,1)))) * (s+(x_zero(7,1)+(1i*y_zero(7,1)))) * (s+(x_zero(8,1)+(1i*y_zero(8,1))));
else
    num=(s+(x_zero(1,1)+(1i*y_zero(1,1)))) * (s+(x_zero(2,1)+(1i*y_zero(2,1)))) * (s+(x_zero(3,1)+(1i*y_zero(3,1)))) * (s+(x_zero(4,1)+(1i*y_zero(4,1)))) * (s+(x_zero(5,1)+(1i*y_zero(5,1)))) * (s+(x_zero(7,1)+(1i*y_zero(7,1)))) * (s+(x_zero(7,1)+(1i*y_zero(7,1)))) * (s+(x_zero(8,1)+(1i*y_zero(8,1)))) * (s+(x_zero(9,1)+(1i*y_zero(9,1))));
end


guidata(hObject,handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global num
global den
% global c
% global m
s = tf('s');

H = num/den
axes(handles.AXES_2)
bode(H);
axes(handles.AXES_1)
rlocus(H);
axes(handles.AXES_3)
step(H)
guidata(hObject,handles)
