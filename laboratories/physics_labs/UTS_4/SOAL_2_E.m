function varargout = SOAL_2_E(varargin)
% SOAL_2_E MATLAB code for SOAL_2_E.fig
%      SOAL_2_E, by itself, creates a new SOAL_2_E or raises the existing
%      singleton*.
%
%      H = SOAL_2_E returns the handle to a new SOAL_2_E or the handle to
%      the existing singleton*.
%
%      SOAL_2_E('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOAL_2_E.M with the given input arguments.
%
%      SOAL_2_E('Property','Value',...) creates a new SOAL_2_E or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SOAL_2_E_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SOAL_2_E_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SOAL_2_E

% Last Modified by GUIDE v2.5 13-May-2023 17:22:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SOAL_2_E_OpeningFcn, ...
                   'gui_OutputFcn',  @SOAL_2_E_OutputFcn, ...
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


% --- Executes just before SOAL_2_E is made visible.
function SOAL_2_E_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SOAL_2_E (see VARARGIN)

% Choose default command line output for SOAL_2_E
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SOAL_2_E wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SOAL_2_E_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)

C1  = str2double(get(handles.C1_FORM, 'string'));
C2  = str2double(get(handles.C2_FORM, 'string'));
C3  = str2double(get(handles.C3_FORM, 'string'));
C4  = str2double(get(handles.C4_FORM, 'string'));
V   = str2double(get(handles.V_FORM, 'string'));

C34  = C3 + C4;
CTOT = 1 / ((1 / C1) + (1 / C2) + (1 / C34));

Q = CTOT * V;

V1  = Q / C1;
V2  = Q / C2;
V34 = Q / C34;

ETOT = 0.5 * CTOT * (V ^ 2);

if logical(get(handles.CTOT_RADIO, 'value'))
    set(handles.CTOT_RES_FORM, 'string', CTOT);
    
elseif logical(get(handles.CHARGE_RADIO, 'value'))
    set(handles.CHARGE_RES_FORM, 'string', Q);
    
elseif logical(get(handles.POTDIFF_RADIO, 'value'))
    set(handles.V1_RES_FORM,  'string', V1);
    set(handles.V2_RES_FORM,  'string', V2);
    set(handles.V34_RES_FORM, 'string', V34);
    
elseif logical(get(handles.ETOT_RADIO, 'value'))
    set(handles.ETOT_RES_FORM, 'string', ETOT);
    
end



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
set(handles.C1_FORM, 'string', '0');
set(handles.C2_FORM, 'string', '0');
set(handles.C3_FORM, 'string', '0');
set(handles.C4_FORM, 'string', '0');
set(handles.V_FORM,  'string', '0');

set(handles.CTOT_RES_FORM,   'string', '0');
set(handles.CHARGE_RES_FORM, 'string', '0');
set(handles.ETOT_RES_FORM,   'string', '0');

set(handles.V1_RES_FORM,     'string', '0');
set(handles.V2_RES_FORM,     'string', '0');
set(handles.V34_RES_FORM,    'string', '0');

% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
close;



function C1_FORM_Callback(hObject, eventdata, handles)
% hObject    handle to C1_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1_FORM as text
%        str2double(get(hObject,'String')) returns contents of C1_FORM as a double


% --- Executes during object creation, after setting all properties.
function C1_FORM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C2_FORM_Callback(hObject, eventdata, handles)
% hObject    handle to C2_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C2_FORM as text
%        str2double(get(hObject,'String')) returns contents of C2_FORM as a double


% --- Executes during object creation, after setting all properties.
function C2_FORM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C3_FORM_Callback(hObject, eventdata, handles)
% hObject    handle to C3_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C3_FORM as text
%        str2double(get(hObject,'String')) returns contents of C3_FORM as a double


% --- Executes during object creation, after setting all properties.
function C3_FORM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C4_FORM_Callback(hObject, eventdata, handles)
% hObject    handle to C4_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C4_FORM as text
%        str2double(get(hObject,'String')) returns contents of C4_FORM as a double


% --- Executes during object creation, after setting all properties.
function C4_FORM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C4_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to CTOT_RES_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CTOT_RES_FORM as text
%        str2double(get(hObject,'String')) returns contents of CTOT_RES_FORM as a double


% --- Executes during object creation, after setting all properties.
function CTOT_RES_FORM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CTOT_RES_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V_FORM_Callback(hObject, eventdata, handles)
% hObject    handle to V_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V_FORM as text
%        str2double(get(hObject,'String')) returns contents of V_FORM as a double


% --- Executes during object creation, after setting all properties.
function V_FORM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V_FORM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
