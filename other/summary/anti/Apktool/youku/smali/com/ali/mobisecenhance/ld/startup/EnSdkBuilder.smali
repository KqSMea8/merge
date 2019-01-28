.class public Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;
.super Ljava/lang/Object;
.source "EnSdkBuilder.java"


# static fields
.field public static final JSONBASE:Ljava/lang/String; = "\"sdk_version\" : %d,\"device_imei\" : \"%s\",\"jg_version\" : \"%s\",\"crash_feel\" : \"%s\",\"thread_pend\" : \"%s\",\"app_pkg_name\" : \"%s\",\"system_info\" : {\"os_version\" : \"%s\",\"os_model\" : \"%s\",\"os_cpu\" : \"%s\",\"os_manufacturer\" : \"%s\",\"os_runtime\" : \"%s\", },\"app_info\" : {\"app_version\" : \"%s\",\"app_md5\" : \"%s\",\"app_dex_size\" : \"%s\",},\"jg_conf_info\" : {\"default_conf\" : \"%s\", },"

.field public static final JSONFIRST:Ljava/lang/String; = "{\"sdk_version\" : %d,\"device_imei\" : \"%s\",\"jg_version\" : \"%s\",\"crash_feel\" : \"%s\",\"thread_pend\" : \"%s\",\"app_pkg_name\" : \"%s\",\"system_info\" : {\"os_version\" : \"%s\",\"os_model\" : \"%s\",\"os_cpu\" : \"%s\",\"os_manufacturer\" : \"%s\",\"os_runtime\" : \"%s\", },\"app_info\" : {\"app_version\" : \"%s\",\"app_md5\" : \"%s\",\"app_dex_size\" : \"%s\",},\"jg_conf_info\" : {\"default_conf\" : \"%s\", },\"first_status\" : \"%s\",\"first_info\" : {\"crash_info\" : \"%s\",\"opt_info\" : \"%s\", },}"


# instance fields
.field private m_crashInfoFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashInfoPath"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;->m_crashInfoFilePath:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;
    .param p3, "jg_version"    # Ljava/lang/String;
    .param p4, "jg_config"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v11, 0x0

    .line 57
    .local v11, "version_release":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const-string v13, "android.os.Build$VERSION"

    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 58
    .local v9, "release":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "RELEASE"

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 59
    .local v5, "f":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "version_release":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v9    # "release":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "version_release":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ali/mobisecenhance/ld/startup/EnSdkBuilder;->m_crashInfoFilePath:Ljava/lang/String;

    invoke-static {v12}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "crashInfo":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "appVersion":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 75
    .local v7, "manager":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 76
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1

    .line 77
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    const-string/jumbo v1, "null"

    .line 85
    :cond_2
    const-string v3, "01234567890123"

    .line 87
    .local v3, "device_imei":Ljava/lang/String;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-ge v12, v13, :cond_3

    .line 88
    const-string/jumbo v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 89
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 93
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_2
    const-string/jumbo v12, "{\"sdk_version\" : %d,\"device_imei\" : \"%s\",\"jg_version\" : \"%s\",\"crash_feel\" : \"%s\",\"thread_pend\" : \"%s\",\"app_pkg_name\" : \"%s\",\"system_info\" : {\"os_version\" : \"%s\",\"os_model\" : \"%s\",\"os_cpu\" : \"%s\",\"os_manufacturer\" : \"%s\",\"os_runtime\" : \"%s\", },\"app_info\" : {\"app_version\" : \"%s\",\"app_md5\" : \"%s\",\"app_dex_size\" : \"%s\",},\"jg_conf_info\" : {\"default_conf\" : \"%s\", },\"first_status\" : \"%s\",\"first_info\" : {\"crash_info\" : \"%s\",\"opt_info\" : \"%s\", },}"

    const/16 v13, 0x12

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object p3, v13, v14

    const/4 v14, 0x3

    const-string v15, "false"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "false"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    aput-object v11, v13, v14

    const/4 v14, 0x7

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v15, v13, v14

    const/16 v14, 0x8

    sget-object v15, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v15, v13, v14

    const/16 v14, 0x9

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "/system/lib/art.so"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    aput-object v1, v13, v14

    const/16 v14, 0xc

    const-string/jumbo v15, "unsupport"

    aput-object v15, v13, v14

    const/16 v14, 0xd

    const-string/jumbo v15, "unsupport"

    aput-object v15, v13, v14

    const/16 v14, 0xe

    aput-object p4, v13, v14

    const/16 v14, 0xf

    const-string v15, "MINI_CRASH_UPLOAD"

    aput-object v15, v13, v14

    const/16 v14, 0x10

    aput-object v2, v13, v14

    const/16 v14, 0x11

    const-string/jumbo v15, "null"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "out":Ljava/lang/String;
    return-object v8

    .line 62
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v2    # "crashInfo":Ljava/lang/String;
    .end local v3    # "device_imei":Ljava/lang/String;
    .end local v7    # "manager":Landroid/content/pm/PackageManager;
    .end local v8    # "out":Ljava/lang/String;
    .end local v11    # "version_release":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const-string/jumbo v11, "unsupport version"

    .restart local v11    # "version_release":Ljava/lang/String;
    goto/16 :goto_0

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "appVersion":Ljava/lang/String;
    .restart local v2    # "crashInfo":Ljava/lang/String;
    .restart local v3    # "device_imei":Ljava/lang/String;
    .restart local v7    # "manager":Landroid/content/pm/PackageManager;
    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string/jumbo v3, "null"

    goto :goto_2

    .line 79
    .end local v3    # "device_imei":Ljava/lang/String;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v12

    goto/16 :goto_1
.end method
