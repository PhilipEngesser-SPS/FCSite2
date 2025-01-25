using System;
using PX.Data;

namespace FCSites
{
  public class SitesMaint : PXGraph<SitesMaint>
  {

    public PXSave<MasterTable> Save;
    public PXCancel<MasterTable> Cancel;


    public PXFilter<MasterTable> MasterView;
    public PXFilter<DetailsTable> DetailsView;

    [Serializable]
    public class MasterTable : PXBqlTable, IBqlTable
    {

    }

    [Serializable]
    public class DetailsTable : PXBqlTable, IBqlTable
    {

    }


  }
}