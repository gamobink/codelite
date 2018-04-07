//////////////////////////////////////////////////////////////////////
// This file was auto-generated by codelite's wxCrafter Plugin
// wxCrafter project file: UI.wxcp
// Do not modify this file by hand!
//////////////////////////////////////////////////////////////////////

#ifndef _CODELITE_LLDBDEBUGGER_UI_BASE_CLASSES_H
#define _CODELITE_LLDBDEBUGGER_UI_BASE_CLASSES_H

#include <wx/settings.h>
#include <wx/xrc/xmlres.h>
#include <wx/xrc/xh_bmp.h>
#include <wx/panel.h>
#include <wx/artprov.h>
#include <wx/sizer.h>
#include <wx/dataview.h>
#include <wx/notebook.h>
#include <wx/imaglist.h>
#include <wx/pen.h>
#include <wx/aui/auibar.h>
#include <map>
#include <wx/menu.h>
#include <wx/toolbar.h>
#include "lldbbreakpointmodel.h"
#include <wx/stc/stc.h>
#include <wx/textctrl.h>
#include <wx/dialog.h>
#include <wx/iconbndl.h>
#include <wx/checkbox.h>
#include <wx/button.h>
#include <wx/propgrid/manager.h>
#include <wx/propgrid/property.h>
#include <wx/propgrid/advprops.h>
#include <wx/hyperlink.h>
#include <wx/stattext.h>
#include <wx/filepicker.h>
#if wxVERSION_NUMBER >= 2900
#include <wx/persist.h>
#include <wx/persist/toplevel.h>
#include <wx/persist/bookctrl.h>
#include <wx/persist/treebook.h>
#endif

#ifdef WXC_FROM_DIP
#undef WXC_FROM_DIP
#endif
#if wxVERSION_NUMBER >= 3100
#define WXC_FROM_DIP(x) wxWindow::FromDIP(x, NULL)
#else
#define WXC_FROM_DIP(x) x
#endif


class LLDBCallStackBase : public wxPanel
{
protected:
    wxDataViewListCtrl* m_dvListCtrlBacktrace;

protected:
    virtual void OnItemActivated(wxDataViewEvent& event) { event.Skip(); }
    virtual void OnContextMenu(wxDataViewEvent& event) { event.Skip(); }

public:
    wxDataViewListCtrl* GetDvListCtrlBacktrace() { return m_dvListCtrlBacktrace; }
    LLDBCallStackBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(500,300), long style = wxTAB_TRAVERSAL);
    virtual ~LLDBCallStackBase();
};


class LLDBOutputViewBase : public wxPanel
{
protected:
    wxNotebook* m_notebook205;
    wxPanel* m_pageBreakpoints;
    wxAuiToolBar* m_auibar;
    wxDataViewCtrl* m_dataview;
    wxObjectDataPtr<LLDBBreakpointModel> m_dataviewModel;

    wxPanel* m_panelConsole;
    wxStyledTextCtrl* m_stcConsole;
    wxTextCtrl* m_textCtrlConsoleSend;

protected:
    virtual void OnNewBreakpoint(wxCommandEvent& event) { event.Skip(); }
    virtual void OnNewBreakpointUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnDeleteBreakpointUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnDeleteBreakpoint(wxCommandEvent& event) { event.Skip(); }
    virtual void OnDeleteAll(wxCommandEvent& event) { event.Skip(); }
    virtual void OnDeleteAllUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnBreakpointActivated(wxDataViewEvent& event) { event.Skip(); }
    virtual void OnSendCommandToLLDB(wxCommandEvent& event) { event.Skip(); }

public:
    wxAuiToolBar* GetAuibar() { return m_auibar; }
    wxDataViewCtrl* GetDataview() { return m_dataview; }
    wxPanel* GetPageBreakpoints() { return m_pageBreakpoints; }
    wxStyledTextCtrl* GetStcConsole() { return m_stcConsole; }
    wxTextCtrl* GetTextCtrlConsoleSend() { return m_textCtrlConsoleSend; }
    wxPanel* GetPanelConsole() { return m_panelConsole; }
    wxNotebook* GetNotebook205() { return m_notebook205; }
    LLDBOutputViewBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(500,300), long style = wxTAB_TRAVERSAL);
    virtual ~LLDBOutputViewBase();
};


class LLDBNewBreakpointDlgBase : public wxDialog
{
protected:
    wxCheckBox* m_checkBoxFileLine;
    wxTextCtrl* m_textCtrlFile;
    wxTextCtrl* m_textCtrlLine;
    wxCheckBox* m_checkBoxFuncName;
    wxTextCtrl* m_textCtrlFunctionName;
    wxStdDialogButtonSizer* m_stdBtnSizer34;
    wxButton* m_button36;
    wxButton* m_button38;

protected:
    virtual void OnCheckFileAndLine(wxCommandEvent& event) { event.Skip(); }
    virtual void OnFileLineEnabledUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnCheckFuncName(wxCommandEvent& event) { event.Skip(); }
    virtual void OnFuncNameUI(wxUpdateUIEvent& event) { event.Skip(); }

public:
    wxCheckBox* GetCheckBoxFileLine() { return m_checkBoxFileLine; }
    wxTextCtrl* GetTextCtrlFile() { return m_textCtrlFile; }
    wxTextCtrl* GetTextCtrlLine() { return m_textCtrlLine; }
    wxCheckBox* GetCheckBoxFuncName() { return m_checkBoxFuncName; }
    wxTextCtrl* GetTextCtrlFunctionName() { return m_textCtrlFunctionName; }
    LLDBNewBreakpointDlgBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = _("New Breakpoint"), const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(-1,-1), long style = wxDEFAULT_DIALOG_STYLE|wxRESIZE_BORDER);
    virtual ~LLDBNewBreakpointDlgBase();
};


class LLDBLocalsViewBase : public wxPanel
{
protected:
    wxAuiToolBar* m_auibar199;

protected:
    virtual void OnNewWatch(wxCommandEvent& event) { event.Skip(); }
    virtual void OnDelete(wxCommandEvent& event) { event.Skip(); }
    virtual void OnDeleteUI(wxUpdateUIEvent& event) { event.Skip(); }

public:
    wxAuiToolBar* GetAuibar199() { return m_auibar199; }
    LLDBLocalsViewBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(-1,-1), long style = wxTAB_TRAVERSAL);
    virtual ~LLDBLocalsViewBase();
};


class LLDBSettingDialogBase : public wxDialog
{
protected:
    wxNotebook* m_notebook87;
    wxPanel* m_panel89;
    wxPropertyGridManager* m_pgMgrDisplayProperties;
    wxPGProperty* m_pgPropCatGeneral;
    wxPGProperty* m_pgPropRaiseCodeLite;
    wxPGProperty* m_pgProp138;
    wxPGProperty* m_pgPropArraySize;
    wxPGProperty* m_pgPropCallStackSize;
    wxPGProperty* m_pgShowThreadNames;
    wxPanel* m_panel91;
    wxStyledTextCtrl* m_stcTypes;
    wxHyperlinkCtrl* m_hyperLink111;
    wxPanel* m_panel142;
    wxPropertyGridManager* m_pgMgrAdvanced;
    wxPGProperty* m_pgProp165;
    wxPGProperty* m_pgPropProxyType;
    wxPGProperty* m_pgPropDebugServer;
    wxPGProperty* m_pgProp169;
    wxPGProperty* m_pgPropProxyIP;
    wxPGProperty* m_pgPropProxyPort;
    wxStdDialogButtonSizer* m_stdBtnSizer79;
    wxButton* m_button81;
    wxButton* m_button83;
    wxButton* m_button175;

protected:
    virtual void OnGeneralValueChanged(wxPropertyGridEvent& event) { event.Skip(); }
    virtual void OnAdvancedValueChanged(wxPropertyGridEvent& event) { event.Skip(); }
    virtual void OnOKUI(wxUpdateUIEvent& event) { event.Skip(); }
    virtual void OnApply(wxCommandEvent& event) { event.Skip(); }

public:
    wxPropertyGridManager* GetPgMgrDisplayProperties() { return m_pgMgrDisplayProperties; }
    wxPanel* GetPanel89() { return m_panel89; }
    wxStyledTextCtrl* GetStcTypes() { return m_stcTypes; }
    wxHyperlinkCtrl* GetHyperLink111() { return m_hyperLink111; }
    wxPanel* GetPanel91() { return m_panel91; }
    wxPropertyGridManager* GetPgMgrAdvanced() { return m_pgMgrAdvanced; }
    wxPanel* GetPanel142() { return m_panel142; }
    wxNotebook* GetNotebook87() { return m_notebook87; }
    LLDBSettingDialogBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = _("LLDB Settings"), const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(500,400), long style = wxDEFAULT_DIALOG_STYLE|wxRESIZE_BORDER);
    virtual ~LLDBSettingDialogBase();
};


class LLDBThreadsViewBase : public wxPanel
{
protected:
    wxDataViewListCtrl* m_dvListCtrlThreads;

protected:
    virtual void OnItemActivated(wxDataViewEvent& event) { event.Skip(); }

public:
    wxDataViewListCtrl* GetDvListCtrlThreads() { return m_dvListCtrlThreads; }
    LLDBThreadsViewBase(wxWindow* parent, wxWindowID id = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(500,300), long style = wxTAB_TRAVERSAL);
    virtual ~LLDBThreadsViewBase();
};


class FolderMappingBaseDlg : public wxDialog
{
protected:
    wxStaticText* m_staticText197;
    wxStaticText* m_staticText189;
    wxDirPickerCtrl* m_dirPickerLocal;
    wxStaticText* m_staticText193;
    wxTextCtrl* m_textCtrlRemote;
    wxStdDialogButtonSizer* m_stdBtnSizer181;
    wxButton* m_button183;
    wxButton* m_button185;

protected:
    virtual void OnOKUI(wxUpdateUIEvent& event) { event.Skip(); }

public:
    wxStaticText* GetStaticText197() { return m_staticText197; }
    wxStaticText* GetStaticText189() { return m_staticText189; }
    wxDirPickerCtrl* GetDirPickerLocal() { return m_dirPickerLocal; }
    wxStaticText* GetStaticText193() { return m_staticText193; }
    wxTextCtrl* GetTextCtrlRemote() { return m_textCtrlRemote; }
    FolderMappingBaseDlg(wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = _("Folder Mapping"), const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize(-1,-1), long style = wxDEFAULT_DIALOG_STYLE|wxRESIZE_BORDER);
    virtual ~FolderMappingBaseDlg();
};

#endif
