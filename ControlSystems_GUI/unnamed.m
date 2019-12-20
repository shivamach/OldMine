function varargout = unnamed(varargin)
% UNNAMED MATLAB code for unnamed.fig
%      UNNAMED, by itself, creates a new UNNAMED or raises the existing
%      singleton*.
%
%      H = UNNAMED returns the handle to a new UNNAMED or the handle to
%      the existing singleton*.
%
%      UNNAMED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNNAMED.M with the given input arguments.
%
%      UNNAMED('Property','Value',...) creates a new UNNAMED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before unnamed_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to unnamed_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help unnamed

% Last Modified by GUIDE v2.5 26-Apr-2018 15:32:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @unnamed_OpeningFcn, ...
                   'gui_OutputFcn',  @unnamed_OutputFcn, ...
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


% --- Executes just before unnamed is made visible.
function unnamed_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to unnamed (see VARARGIN)

% Choose default command line output for unnamed
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes unnamed wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = unnamed_OutputFcn(hObject, eventdata, handles) 
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



function num_c_Callback(hObject, eventdata, handles)
% hObject    handle to num_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_c as text
%        str2double(get(hObject,'String')) returns contents of num_c as a double


% --- Executes during object creation, after setting all properties.
function num_c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_s_Callback(hObject, eventdata, handles)
% hObject    handle to num_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_s as text
%        str2double(get(hObject,'String')) returns contents of num_s as a double


% --- Executes during object creation, after setting all properties.
function num_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_s2_Callback(hObject, eventdata, handles)
% hObject    handle to num_s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_s2 as text
%        str2double(get(hObject,'String')) returns contents of num_s2 as a double


% --- Executes during object creation, after setting all properties.
function num_s2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_s3_Callback(hObject, eventdata, handles)
% hObject    handle to num_s3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_s3 as text
%        str2double(get(hObject,'String')) returns contents of num_s3 as a double


% --- Executes during object creation, after setting all properties.
function num_s3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_s3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_s4_Callback(hObject, eventdata, handles)
% hObject    handle to num_s4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_s4 as text
%        str2double(get(hObject,'String')) returns contents of num_s4 as a double


% --- Executes during object creation, after setting all properties.
function num_s4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_s4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_c_Callback(hObject, eventdata, handles)
% hObject    handle to den_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den_c as text
%        str2double(get(hObject,'String')) returns contents of den_c as a double


% --- Executes during object creation, after setting all properties.
function den_c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_s_Callback(hObject, eventdata, handles)
% hObject    handle to den_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den_s as text
%        str2double(get(hObject,'String')) returns contents of den_s as a double


% --- Executes during object creation, after setting all properties.
function den_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_s2_Callback(hObject, eventdata, handles)
% hObject    handle to den_s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den_s2 as text
%        str2double(get(hObject,'String')) returns contents of den_s2 as a double


% --- Executes during object creation, after setting all properties.
function den_s2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den_s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_s3_Callback(hObject, eventdata, handles)
% hObject    handle to den_s3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den_s3 as text
%        str2double(get(hObject,'String')) returns contents of den_s3 as a double


% --- Executes during object creation, after setting all properties.
function den_s3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den_s3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_s4_Callback(hObject, eventdata, handles)
% hObject    handle to den_s4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den_s4 as text
%        str2double(get(hObject,'String')) returns contents of den_s4 as a double


% --- Executes during object creation, after setting all properties.
function den_s4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den_s4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num1_c_Callback(hObject, eventdata, handles)
% hObject    handle to num1_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num1_c as text
%        str2double(get(hObject,'String')) returns contents of num1_c as a double


% --- Executes during object creation, after setting all properties.
function num1_c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num1_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num1_s_Callback(hObject, eventdata, handles)
% hObject    handle to num1_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num1_s as text
%        str2double(get(hObject,'String')) returns contents of num1_s as a double


% --- Executes during object creation, after setting all properties.
function num1_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num1_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den1_c_Callback(hObject, eventdata, handles)
% hObject    handle to den1_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den1_c as text
%        str2double(get(hObject,'String')) returns contents of den1_c as a double


% --- Executes during object creation, after setting all properties.
function den1_c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den1_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den1_s_Callback(hObject, eventdata, handles)
% hObject    handle to den1_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den1_s as text
%        str2double(get(hObject,'String')) returns contents of den1_s as a double


% --- Executes during object creation, after setting all properties.
function den1_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den1_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den1_s2_Callback(hObject, eventdata, handles)
% hObject    handle to den1_s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den1_s2 as text
%        str2double(get(hObject,'String')) returns contents of den1_s2 as a double


% --- Executes during object creation, after setting all properties.
function den1_s2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den1_s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pop2nd.
function pop2nd_Callback(hObject, eventdata, handles)
% hObject    handle to pop2nd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num1_s = str2double(get(handles.num1_s,'String'));

num1_c = str2double(get(handles.num1_c,'String'));

den1_s2 = str2double(get(handles.den1_s2,'String'));

den1_s = str2double(get(handles.den1_s,'String'));

den1_c = str2double(get(handles.den1_c,'String'));

H2= tf([num1_s num1_c],[den1_s2 den1_s den1_c]);
r=get(handles.pop2nd,'value');
if r==1
    axes(handles.axes1)
    pzmap(H2);
    hold off
elseif r==2
    axes(handles.axes1)
    step(H2);
    hold off
elseif r==3
    axes(handles.axes1)
    impulse(H2);
elseif r==4
    axes(handles.axes1)
    t=0:0.1:10;
        input=t;
        lsim(H2,input,t);
else
    axes(handles.axes1)
    rlocus(H2);
end  
guidata(hObject,handles);
% Hints: contents = cellstr(get(hObject,'String')) returns pop2nd contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pop2nd


% --- Executes during object creation, after setting all properties.
function pop2nd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop2nd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pophigh.
function pophigh_Callback(hObject, eventdata, handles)
% hObject    handle to pophigh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num_s4 = str2double(get(handles.num_s4,'String'));

num_s3 = str2double(get(handles.num_s3,'String'));

num_s2 = str2double(get(handles.num_s2,'String'));

num_s = str2double(get(handles.num_s,'String'));

num_c = str2double(get(handles.num_c,'String'));

den_s4 = str2double(get(handles.den_s4,'String'));

den_s3 = str2double(get(handles.den_s3,'String'));

den_s2 = str2double(get(handles.den_s2,'String'));

den_s = str2double(get(handles.den_s,'String'));

den_c = str2double(get(handles.den_c,'String'));

H= tf([num_s4 num_s3 num_s2 num_s num_c],[den_s4 den_s3 den_s2 den_s den_c]);
q=get(handles.pophigh,'value');
if q==1
    axes(handles.axes1)
    plot([2 3],[6 7]);
    pzmap(H);
    hold off
elseif q==2
    axes(handles.axes1)
    step(H);
    hold off
elseif q==3
    axes(handles.axes1)
    impulse(H);
    hold off
elseif q==4
    axes(handles.axes1)
    t=0:0.1:10;
        input=t;
        lsim(H,input,t);
else
    axes(handles.axes1)
    rlocus(H);
end
guidata(hObject,handles);
% Hints: contents = cellstr(get(hObject,'String')) returns pophigh contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pophigh


% --- Executes during object creation, after setting all properties.
function pophigh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pophigh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


set(handles.uipanel2,'visible','on');
set(handles.uipanel1,'visible','off');
set(handles.pophigh,'visible','off');
set(handles.pop2nd,'visible','on');
guidata(hObject,handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel1,'visible','on');
set(handles.uipanel2,'visible','off');
set(handles.pop2nd,'visible','off');
set(handles.pophigh,'visible','on');
guidata(hObject,handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes during object creation, after setting all properties.
function uibuttongroup1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --------------------------------------------------------------------
function uipanel2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
