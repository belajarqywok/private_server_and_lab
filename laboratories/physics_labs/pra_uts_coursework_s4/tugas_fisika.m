function varargout = tugas_fisika(varargin)
% TUGAS_FISIKA MATLAB code for tugas_fisika.fig
%      TUGAS_FISIKA, by itself, creates a new TUGAS_FISIKA or raises the existing
%      singleton*.
%
%      H = TUGAS_FISIKA returns the handle to a new TUGAS_FISIKA or the handle to
%      the existing singleton*.
%
%      TUGAS_FISIKA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS_FISIKA.M with the given input arguments.
%
%      TUGAS_FISIKA('Property','Value',...) creates a new TUGAS_FISIKA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugas_fisika_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugas_fisika_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugas_fisika

% Last Modified by GUIDE v2.5 02-May-2023 16:30:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugas_fisika_OpeningFcn, ...
                   'gui_OutputFcn',  @tugas_fisika_OutputFcn, ...
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


% --- Executes just before tugas_fisika is made visible.
function tugas_fisika_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugas_fisika (see VARARGIN)

% Choose default command line output for tugas_fisika
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugas_fisika wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugas_fisika_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Q1_Callback(hObject, eventdata, handles)
% hObject    handle to Q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q1 as text
%        str2double(get(hObject,'String')) returns contents of Q1 as a double


% --- Executes during object creation, after setting all properties.
function Q1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Q2_Callback(hObject, eventdata, handles)
% hObject    handle to Q2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q2 as text
%        str2double(get(hObject,'String')) returns contents of Q2 as a double


% --- Executes during object creation, after setting all properties.
function Q2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Q3_Callback(hObject, eventdata, handles)
% hObject    handle to Q3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q3 as text
%        str2double(get(hObject,'String')) returns contents of Q3 as a double


% --- Executes during object creation, after setting all properties.
function Q3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Q4_Callback(hObject, eventdata, handles)
% hObject    handle to Q4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q4 as text
%        str2double(get(hObject,'String')) returns contents of Q4 as a double


% --- Executes during object creation, after setting all properties.
function Q4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_count.
function btn_count_Callback(hObject, eventdata, handles)
% hObject    handle to btn_count (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

K = 9 * (10 ^ 9);

% Get Values
d = (10^-6);

Q1 = str2double(get(handles.Q1, 'string')) * d;
Q2 = str2double(get(handles.Q2, 'string')) * d;
Q3 = str2double(get(handles.Q3, 'string')) * d;
Q4 = str2double(get(handles.Q4, 'string')) * d;

% Diagonal
R = ((str2double(get(handles.D, 'string')) / 100) * sqrt(2)) / 2;

Vp = K * ((Q1/R) + (Q2/R) + (Q3/R) + (Q4/R));

set(handles.Vp, 'string', Vp);



% --- Executes on button press in btn_reset.
function btn_reset_Callback(hObject, eventdata, handles)
% hObject    handle to btn_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Q1, 'string', '0');
set(handles.Q2, 'string', '0');
set(handles.Q3, 'string', '0');
set(handles.Q4, 'string', '0');

set(handles.D, 'string', '0');

set(handles.Vp, 'string', '0');


% --- Executes on button press in btn_exit.
function btn_exit_Callback(hObject, eventdata, handles)
% hObject    handle to btn_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close;



function Vp_Callback(hObject, eventdata, handles)
% hObject    handle to Vp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vp as text
%        str2double(get(hObject,'String')) returns contents of Vp as a double


% --- Executes during object creation, after setting all properties.
function Vp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function img_CreateFcn(hObject, eventdata, handles)
% hObject    handle to img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate img

image = imread('soal.png');
axis off;
imshow(image);
