using System;
using PX.Data;

namespace FCSites
{
  [Serializable]
  [PXCacheName("FCSite")]
  public class FCSite : PXBqlTable, IBqlTable
  {
    #region Siteid
    [PXDBInt(IsKey = true)]
    [PXUIField(DisplayName = "Siteid")]
    public virtual int? Siteid { get; set; }
    public abstract class siteid : PX.Data.BQL.BqlInt.Field<siteid> { }
    #endregion

    #region SiteName
    [PXDBString(255, InputMask = "")]
    [PXUIField(DisplayName = "Site Name")]
    public virtual string SiteName { get; set; }
    public abstract class siteName : PX.Data.BQL.BqlString.Field<siteName> { }
    #endregion

    #region CurrencyID
    [PXDBString(10, InputMask = "")]
    [PXUIField(DisplayName = "Currency ID")]
    public virtual string CurrencyID { get; set; }
    public abstract class currencyID : PX.Data.BQL.BqlString.Field<currencyID> { }
    #endregion

    #region SiteStatus
    [PXDBString(50, InputMask = "")]
    [PXUIField(DisplayName = "Site Status")]
    public virtual string SiteStatus { get; set; }
    public abstract class siteStatus : PX.Data.BQL.BqlString.Field<siteStatus> { }
    #endregion

    #region FacilityManagementCompany
    [PXDBInt()]
    [PXUIField(DisplayName = "Facility Management Company")]
    public virtual int? FacilityManagementCompany { get; set; }
    public abstract class facilityManagementCompany : PX.Data.BQL.BqlInt.Field<facilityManagementCompany> { }
    #endregion
  }
}