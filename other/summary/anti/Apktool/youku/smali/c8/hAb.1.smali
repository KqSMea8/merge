.class public Lc8/hAb;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static PATH_AND_BIN_MONKEY:Ljava/lang/String;

.field private static PATH_AND_BIN_SETPROP:Ljava/lang/String;

.field private static mDeviceInfo:Lc8/iAb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lc8/hAb;->mDeviceInfo:Lc8/iAb;

    .line 35
    const-string/jumbo v0, "/system/bin/setprop"

    sput-object v0, Lc8/hAb;->PATH_AND_BIN_SETPROP:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "/system/bin/monkey"

    sput-object v0, Lc8/hAb;->PATH_AND_BIN_MONKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _checkIMEISI(Landroid/content/Context;)V
    .locals 10
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 64
    const-string/jumbo v7, "Alvin3"

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 65
    .local v2, "lAlvin3SP":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "UTCommon"

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 66
    .local v6, "lUTCommonSP":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string/jumbo v7, "EI"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "lAlvin3Imei":Ljava/lang/String;
    const-string/jumbo v7, "SI"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "lAlvin3Imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    const-string/jumbo v7, "EI"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "lUTCommonImei":Ljava/lang/String;
    const-string/jumbo v7, "SI"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "lUTCommonImsi":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 78
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 79
    .local v3, "lEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "EI"

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    .end local v3    # "lEditor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 84
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 85
    .restart local v3    # "lEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "SI"

    invoke-interface {v3, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static _initDeviceMetadata(Landroid/content/Context;)Lc8/iAb;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 178
    if-eqz p0, :cond_2

    .line 179
    invoke-static {p0}, Lc8/hAb;->getDeviceMetadataFromPPC(Landroid/content/Context;)Lc8/iAb;

    move-result-object v0

    .line 181
    .local v0, "lDeviceInfo":Lc8/iAb;
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/iAb;->setUtdid(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lc8/iAb;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {p0}, Lc8/SBb;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/iAb;->setImei(Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-virtual {v0}, Lc8/iAb;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-static {p0}, Lc8/SBb;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/iAb;->setImsi(Ljava/lang/String;)V

    .line 191
    .end local v0    # "lDeviceInfo":Lc8/iAb;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lc8/iAb;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-class v19, Lc8/hAb;

    monitor-enter v19

    :try_start_0
    sget-object v18, Lc8/hAb;->mDeviceInfo:Lc8/iAb;

    if-eqz v18, :cond_0

    .line 196
    sget-object v9, Lc8/hAb;->mDeviceInfo:Lc8/iAb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    monitor-exit v19

    return-object v9

    .line 198
    :cond_0
    if-eqz p0, :cond_9

    .line 199
    :try_start_1
    invoke-static/range {p0 .. p0}, Lc8/hAb;->_initDeviceMetadata(Landroid/content/Context;)Lc8/iAb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 200
    .local v9, "lDeviceInfo":Lc8/iAb;
    if-eqz v9, :cond_5

    .line 202
    :try_start_2
    const-string/jumbo v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 204
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v12, :cond_1

    .line 205
    const/4 v9, 0x0

    goto :goto_0

    .line 207
    :cond_1
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setDeviceModel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 212
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 213
    .local v15, "versionName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 214
    .local v14, "versionCode":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setVersionCode(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v9, v15}, Lc8/iAb;->setAppVersion(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "versionCode":I
    .end local v15    # "versionName":Ljava/lang/String;
    :goto_1
    :try_start_4
    sget-object v18, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setBrand(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v18, "Android"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setOsName(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lc8/hAb;->isYunOSSystem()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 223
    const-string/jumbo v18, "aliyunos"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setOsName(Ljava/lang/String;)V

    .line 225
    :cond_2
    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setOsVersion(Ljava/lang/String;)V

    .line 226
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 227
    .local v6, "configuration":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 230
    if-eqz v6, :cond_8

    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 232
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setCountry(Ljava/lang/String;)V

    .line 234
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setLanguage(Ljava/lang/String;)V

    .line 236
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 237
    .local v5, "calendar":Ljava/util/Calendar;
    if-eqz v5, :cond_7

    .line 238
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    .line 239
    .local v13, "timezone":Ljava/util/TimeZone;
    if-eqz v13, :cond_6

    .line 240
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v20

    const v21, 0x36ee80

    div-int v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setTimezone(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v13    # "timezone":Ljava/util/TimeZone;
    :goto_2
    :try_start_5
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 255
    .local v7, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v18, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 257
    .local v17, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 259
    .local v16, "width":I
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 260
    .local v8, "height":I
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lc8/iAb;->setScreenWidth(I)V

    .line 261
    invoke-virtual {v9, v8}, Lc8/iAb;->setScreenHeight(I)V

    .line 262
    move/from16 v0, v16

    if-le v0, v8, :cond_3

    .line 263
    xor-int v16, v16, v8

    .line 264
    xor-int v8, v8, v16

    .line 265
    xor-int v16, v16, v8

    .line 267
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "*"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setResolution(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 272
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "height":I
    .end local v16    # "width":I
    .end local v17    # "wm":Landroid/view/WindowManager;
    :goto_3
    :try_start_6
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/yAb;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setAccess(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/yAb;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setAccessSubType(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "networkName":Ljava/lang/String;
    invoke-static {v10}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 278
    const-string/jumbo v10, ""

    .line 280
    :cond_4
    invoke-virtual {v9, v10}, Lc8/iAb;->setCarrier(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lc8/cCb;->getCpuInfo()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setCpu(Ljava/lang/String;)V

    .line 284
    new-instance v18, Ljava/io/File;

    sget-object v20, Lc8/hAb;->PATH_AND_BIN_SETPROP:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "binTime":Ljava/lang/String;
    const-string/jumbo v18, "_"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v20, Ljava/io/File;

    sget-object v21, Lc8/hAb;->PATH_AND_BIN_MONKEY:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-virtual {v9, v4}, Lc8/iAb;->setBinTime(Ljava/lang/String;)V

    .line 290
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x9

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 291
    invoke-static {}, Lc8/hAb;->getSerialNo()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setSerialNo(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    .end local v4    # "binTime":Ljava/lang/String;
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .end local v10    # "networkName":Ljava/lang/String;
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_7
    sput-object v9, Lc8/hAb;->mDeviceInfo:Lc8/iAb;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 195
    .end local v9    # "lDeviceInfo":Lc8/iAb;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 217
    .restart local v9    # "lDeviceInfo":Lc8/iAb;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v18

    :try_start_8
    const-string/jumbo v18, "Unknown"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setVersionCode(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v18, "Unknown"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setAppVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 295
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v18

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 243
    .restart local v5    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v13    # "timezone":Ljava/util/TimeZone;
    :cond_6
    const-string/jumbo v18, "8"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 246
    .end local v13    # "timezone":Ljava/util/TimeZone;
    :cond_7
    const-string/jumbo v18, "8"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 249
    .end local v5    # "calendar":Ljava/util/Calendar;
    :cond_8
    const-string/jumbo v18, "Unknown"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setCountry(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v18, "Unknown"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setLanguage(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v18, "8"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 269
    :catch_2
    move-exception v18

    const-string/jumbo v18, "Unknown"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lc8/iAb;->setResolution(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 301
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .end local v9    # "lDeviceInfo":Lc8/iAb;
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method static getDeviceMetadataFromPPC(Landroid/content/Context;)Lc8/iAb;
    .locals 20
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 92
    if-eqz p0, :cond_1

    .line 95
    invoke-static/range {p0 .. p0}, Lc8/hAb;->_checkIMEISI(Landroid/content/Context;)V

    .line 99
    invoke-static/range {p0 .. p0}, Lc8/jAb;->getNewDevicePersistentConfig(Landroid/content/Context;)Lc8/kAb;

    move-result-object v16

    .line 100
    .local v16, "lNewDevicePPC":Lc8/kAb;
    if-eqz v16, :cond_0

    .line 101
    const-string/jumbo v18, "EI"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/kAb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "lBase64IMEI":Ljava/lang/String;
    const-string/jumbo v18, "SI"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/kAb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "lBase64IMSI":Ljava/lang/String;
    move-object v6, v7

    .line 104
    .local v6, "lBase64DID":Ljava/lang/String;
    invoke-static {v7}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v8}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v6}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 106
    const/4 v12, 0x0

    .line 107
    .local v12, "lIMEI":Ljava/lang/String;
    const/4 v14, 0x0

    .line 108
    .local v14, "lIMSI":Ljava/lang/String;
    const/4 v9, 0x0

    .line 110
    .local v9, "lDID":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/lang/String;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/CBb;->decode([B)[B

    move-result-object v18

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .end local v12    # "lIMEI":Ljava/lang/String;
    .local v13, "lIMEI":Ljava/lang/String;
    :try_start_1
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/CBb;->decode([B)[B

    move-result-object v18

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 112
    .end local v14    # "lIMSI":Ljava/lang/String;
    .local v15, "lIMSI":Ljava/lang/String;
    :try_start_2
    new-instance v10, Ljava/lang/String;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/CBb;->decode([B)[B

    move-result-object v18

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .end local v9    # "lDID":Ljava/lang/String;
    .local v10, "lDID":Ljava/lang/String;
    move-object v9, v10

    .end local v10    # "lDID":Ljava/lang/String;
    .restart local v9    # "lDID":Ljava/lang/String;
    move-object v14, v15

    .end local v15    # "lIMSI":Ljava/lang/String;
    .restart local v14    # "lIMSI":Ljava/lang/String;
    move-object v12, v13

    .line 120
    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    :goto_0
    invoke-static {v12}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v14}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v9}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 122
    new-instance v11, Lc8/iAb;

    invoke-direct {v11}, Lc8/iAb;-><init>()V

    .line 123
    .local v11, "lDeviceInfo":Lc8/iAb;
    invoke-virtual {v11, v9}, Lc8/iAb;->setDeviceId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v11, v12}, Lc8/iAb;->setImei(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v11, v14}, Lc8/iAb;->setImsi(Ljava/lang/String;)V

    .line 174
    .end local v6    # "lBase64DID":Ljava/lang/String;
    .end local v7    # "lBase64IMEI":Ljava/lang/String;
    .end local v8    # "lBase64IMSI":Ljava/lang/String;
    .end local v9    # "lDID":Ljava/lang/String;
    .end local v16    # "lNewDevicePPC":Lc8/kAb;
    :goto_1
    return-object v11

    .line 113
    .end local v11    # "lDeviceInfo":Lc8/iAb;
    .restart local v6    # "lBase64DID":Ljava/lang/String;
    .restart local v7    # "lBase64IMEI":Ljava/lang/String;
    .restart local v8    # "lBase64IMSI":Ljava/lang/String;
    .restart local v9    # "lDID":Ljava/lang/String;
    .restart local v16    # "lNewDevicePPC":Lc8/kAb;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 118
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "lBase64DID":Ljava/lang/String;
    .end local v7    # "lBase64IMEI":Ljava/lang/String;
    .end local v8    # "lBase64IMSI":Ljava/lang/String;
    .end local v9    # "lDID":Ljava/lang/String;
    .end local v12    # "lIMEI":Ljava/lang/String;
    .end local v14    # "lIMSI":Ljava/lang/String;
    :cond_0
    invoke-static/range {p0 .. p0}, Lc8/jAb;->getDevicePersistentConfig(Landroid/content/Context;)Lc8/kAb;

    move-result-object v17

    .line 134
    .local v17, "ppc":Lc8/kAb;
    if-eqz v17, :cond_1

    .line 135
    const-string/jumbo v18, "EI"

    invoke-virtual/range {v17 .. v18}, Lc8/kAb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "imei":Ljava/lang/String;
    const-string/jumbo v18, "SI"

    invoke-virtual/range {v17 .. v18}, Lc8/kAb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "imsi":Ljava/lang/String;
    const-string/jumbo v18, "DID"

    invoke-virtual/range {v17 .. v18}, Lc8/kAb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "did":Ljava/lang/String;
    invoke-static {v4}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static {v5}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 143
    const/4 v12, 0x0

    .line 144
    .restart local v12    # "lIMEI":Ljava/lang/String;
    const/4 v14, 0x0

    .line 146
    .restart local v14    # "lIMSI":Ljava/lang/String;
    :try_start_3
    new-instance v13, Ljava/lang/String;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/CBb;->decode([B)[B

    move-result-object v18

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 147
    .end local v12    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    :try_start_4
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/CBb;->decode([B)[B

    move-result-object v18

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v14    # "lIMSI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    move-object v14, v15

    .end local v15    # "lIMSI":Ljava/lang/String;
    .restart local v14    # "lIMSI":Ljava/lang/String;
    move-object v12, v13

    .line 155
    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    :goto_4
    new-instance v11, Lc8/iAb;

    invoke-direct {v11}, Lc8/iAb;-><init>()V

    .line 156
    .restart local v11    # "lDeviceInfo":Lc8/iAb;
    invoke-virtual {v11, v2}, Lc8/iAb;->setDeviceId(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v11, v4}, Lc8/iAb;->setImei(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v11, v5}, Lc8/iAb;->setImsi(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    invoke-static {v0, v12, v14}, Lc8/hAb;->saveDeviceMetadataToNewPPC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v11    # "lDeviceInfo":Lc8/iAb;
    :catch_2
    move-exception v3

    .line 150
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 151
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v3

    .line 152
    .local v3, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 165
    .end local v2    # "did":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "imei":Ljava/lang/String;
    .end local v5    # "imsi":Ljava/lang/String;
    .end local v12    # "lIMEI":Ljava/lang/String;
    .end local v14    # "lIMSI":Ljava/lang/String;
    .end local v16    # "lNewDevicePPC":Lc8/kAb;
    .end local v17    # "ppc":Lc8/kAb;
    :cond_1
    new-instance v11, Lc8/iAb;

    invoke-direct {v11}, Lc8/iAb;-><init>()V

    .line 166
    .restart local v11    # "lDeviceInfo":Lc8/iAb;
    invoke-static/range {p0 .. p0}, Lc8/SBb;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 167
    .restart local v12    # "lIMEI":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lc8/SBb;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 168
    .restart local v14    # "lIMSI":Ljava/lang/String;
    move-object v9, v12

    .line 169
    .restart local v9    # "lDID":Ljava/lang/String;
    invoke-virtual {v11, v12}, Lc8/iAb;->setImei(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v11, v14}, Lc8/iAb;->setImsi(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v11, v9}, Lc8/iAb;->setDeviceId(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    invoke-static {v0, v12, v14}, Lc8/hAb;->saveDeviceMetadataToNewPPC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    .end local v9    # "lDID":Ljava/lang/String;
    .end local v11    # "lDeviceInfo":Lc8/iAb;
    .end local v12    # "lIMEI":Ljava/lang/String;
    .restart local v2    # "did":Ljava/lang/String;
    .restart local v4    # "imei":Ljava/lang/String;
    .restart local v5    # "imsi":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    .restart local v16    # "lNewDevicePPC":Lc8/kAb;
    .restart local v17    # "ppc":Lc8/kAb;
    :catch_4
    move-exception v3

    move-object v12, v13

    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    goto :goto_6

    .line 149
    .end local v12    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    :catch_5
    move-exception v3

    move-object v12, v13

    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    goto :goto_5

    .line 116
    .end local v2    # "did":Ljava/lang/String;
    .end local v4    # "imei":Ljava/lang/String;
    .end local v5    # "imsi":Ljava/lang/String;
    .end local v12    # "lIMEI":Ljava/lang/String;
    .end local v17    # "ppc":Lc8/kAb;
    .restart local v6    # "lBase64DID":Ljava/lang/String;
    .restart local v7    # "lBase64IMEI":Ljava/lang/String;
    .restart local v8    # "lBase64IMSI":Ljava/lang/String;
    .restart local v9    # "lDID":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v12, v13

    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_3

    .end local v12    # "lIMEI":Ljava/lang/String;
    .end local v14    # "lIMSI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    :catch_7
    move-exception v3

    move-object v14, v15

    .end local v15    # "lIMSI":Ljava/lang/String;
    .restart local v14    # "lIMSI":Ljava/lang/String;
    move-object v12, v13

    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_3

    .line 113
    .end local v12    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    :catch_8
    move-exception v3

    move-object v12, v13

    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_2

    .end local v12    # "lIMEI":Ljava/lang/String;
    .end local v14    # "lIMSI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    :catch_9
    move-exception v3

    move-object v14, v15

    .end local v15    # "lIMSI":Ljava/lang/String;
    .restart local v14    # "lIMSI":Ljava/lang/String;
    move-object v12, v13

    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v12    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private static getSerialNo()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 308
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static isYunOSSystem()Z
    .locals 2

    .prologue
    .line 318
    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lemur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ro.yunos.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 321
    :cond_1
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static saveDeviceMetadataToNewPPC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "pIMEI"    # Ljava/lang/String;
    .param p2, "pIMSI"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-static {p0}, Lc8/jAb;->getNewDevicePersistentConfig(Landroid/content/Context;)Lc8/kAb;

    move-result-object v3

    .line 43
    .local v3, "lNewDevicePPC":Lc8/kAb;
    if-eqz v3, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "lBase64IMEI":Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, "lBase64IMSI":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lc8/CBb;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lc8/CBb;->encodeBase64String([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    :goto_0
    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    const-string/jumbo v4, "EI"

    invoke-virtual {v3, v4, v1}, Lc8/kAb;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v4, "SI"

    invoke-virtual {v3, v4, v2}, Lc8/kAb;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3}, Lc8/kAb;->commit()Z

    .line 61
    .end local v1    # "lBase64IMEI":Ljava/lang/String;
    .end local v2    # "lBase64IMSI":Ljava/lang/String;
    .end local v3    # "lNewDevicePPC":Lc8/kAb;
    :cond_0
    return-void

    .line 49
    .restart local v1    # "lBase64IMEI":Ljava/lang/String;
    .restart local v2    # "lBase64IMSI":Ljava/lang/String;
    .restart local v3    # "lNewDevicePPC":Lc8/kAb;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
