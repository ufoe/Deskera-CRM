/*
 * Copyright (C) 2012  Krawler Information Systems Pvt Ltd
 * All rights reserved.
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

package com.krawler.crm.account.bizservice;

import java.text.DateFormat;
import java.util.HashMap;

import com.krawler.common.service.ServiceException;
import com.krawler.crm.database.tables.CrmAccount;
import com.krawler.utils.json.base.JSONObject;

/**
 *
 * @author sagar
 */
public interface AccountManagementService {

    JSONObject getAccounts(String companyid, String userid, String currencyid, String selectExportJson,
            String isarchive, String searchJson, String ss, String config, String isExport,
            boolean heirarchyPerm, String field, String direction, String iscustomcolumn, String xtype, String xfield,
            String start, String limit, DateFormat dateFormat, StringBuffer usersList) throws ServiceException;

    JSONObject AccountExport(String companyid, String userid, String currencyid, String selectExportJson, String isarchive,
            String searchJson, String ss, String config, String isExport, boolean heirarchyPerm, String field, String direction, DateFormat dateFormat, StringBuffer usersList) throws ServiceException;

    JSONObject getAccountJsonObject(CrmAccount aCrmAccount, JSONObject tmpObj, String companyid, String currencyid,
            HashMap<String, Integer> FieldMap,boolean isexport, DateFormat dateFormat) ;
}
