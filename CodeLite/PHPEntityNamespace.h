#ifndef PHPENTITYNAMESPACE_H
#define PHPENTITYNAMESPACE_H

#include "codelite_exports.h"
#include "PHPEntityBase.h" // Base class: PHPEntityBase
#include <wx/string.h>

class WXDLLIMPEXP_CL PHPEntityNamespace : public PHPEntityBase
{
public:
    virtual void Store(wxSQLite3Database& db);
    virtual void PrintStdout(int indent) const;
    PHPEntityNamespace();
    virtual ~PHPEntityNamespace();
};

#endif // PHPENTITYNAMESPACE_H
