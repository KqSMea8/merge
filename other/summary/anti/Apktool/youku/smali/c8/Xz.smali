.class public Lc8/Xz;
.super Landroid/content/ContentProvider;
.source "ContentProviderBridge.java"


# static fields
.field public static final METHOD_INSTALLPROVIDER:Ljava/lang/String; = "atlas_install_provider"

.field public static final PROVIDER_HOLDER_KEY:Ljava/lang/String; = "holder"

.field public static final PROVIDER_INFO_KEY:Ljava/lang/String; = "info"


# instance fields
.field private providerRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Xz;->providerRecord:Ljava/util/HashMap;

    return-void
.end method

.method private static accquireRemoteBridgeToken(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p0}, Lc8/Oz;->getBridgeName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static completeRemoveProvider()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public static getContentProvider(Landroid/content/pm/ProviderInfo;)Ljava/lang/Object;
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 33
    iget-object v2, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 34
    .local v1, "targetProcessName":Ljava/lang/String;
    :goto_0
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "currentProcessName":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v2, :cond_0

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    :cond_0
    invoke-static {v0, p0}, Lc8/Xz;->transactProviderInstall(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Ljava/lang/Object;

    move-result-object v2

    .line 38
    :goto_1
    return-object v2

    .line 33
    .end local v0    # "currentProcessName":Ljava/lang/String;
    .end local v1    # "targetProcessName":Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 38
    .restart local v0    # "currentProcessName":Ljava/lang/String;
    .restart local v1    # "targetProcessName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v2, p0}, Lc8/Xz;->transactProviderInstall(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method public static removeContentProvider()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method private static transactProviderInstall(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Ljava/lang/Object;
    .locals 7
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 54
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "info"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 57
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lc8/Xz;->accquireRemoteBridgeToken(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "atlas_install_provider"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "holder"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 59
    .local v3, "holder":Landroid/os/Parcelable;
    return-object v3
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v11, 0x19

    .line 94
    const-string/jumbo v7, "ContentProviderBridge"

    const-string/jumbo v8, "call"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string/jumbo v7, "atlas_install_provider"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 96
    const-string/jumbo v7, "info"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 97
    .local v3, "info":Landroid/content/pm/ProviderInfo;
    if-nez v3, :cond_0

    .line 139
    .end local v3    # "info":Landroid/content/pm/ProviderInfo;
    :goto_0
    return-object v6

    .line 100
    .restart local v3    # "info":Landroid/content/pm/ProviderInfo;
    :cond_0
    iget-object v7, p0, Lc8/Xz;->providerRecord:Ljava/util/HashMap;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    .local v2, "holder":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 104
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v7, v11, :cond_1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v7, v11, :cond_4

    sget v7, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v7, :cond_4

    .line 105
    :cond_1
    new-instance v5, Landroid/app/ContentProviderHolder;

    invoke-direct {v5, v6}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 110
    :goto_1
    :try_start_0
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "activityThread":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 113
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-ne v7, v8, :cond_5

    .line 114
    sget-object v7, Lc8/xy;->ActivityThread_installProvider:Lc8/Dy;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 115
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 114
    invoke-virtual {v7, v0, v8}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 123
    .local v4, "newHolder":Ljava/lang/Object;
    :goto_2
    move-object v2, v4

    .line 124
    iget-object v7, p0, Lc8/Xz;->providerRecord:Ljava/util/HashMap;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v4    # "newHolder":Ljava/lang/Object;
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v6, "result":Landroid/os/Bundle;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v7, v11, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v7, v11, :cond_7

    sget v7, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v7, :cond_7

    .line 133
    :cond_3
    const-string/jumbo v7, "holder"

    check-cast v2, Landroid/app/ContentProviderHolder;

    .end local v2    # "holder":Ljava/lang/Object;
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 107
    .end local v6    # "result":Landroid/os/Bundle;
    .restart local v2    # "holder":Ljava/lang/Object;
    :cond_4
    new-instance v5, Landroid/app/IActivityManager$ContentProviderHolder;

    invoke-direct {v5, v6}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .local v5, "original":Landroid/app/IActivityManager$ContentProviderHolder;
    goto :goto_1

    .line 116
    .end local v5    # "original":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v0    # "activityThread":Ljava/lang/Object;
    :cond_5
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-ne v7, v8, :cond_6

    .line 117
    sget-object v7, Lc8/xy;->ActivityThread_installProvider:Lc8/Dy;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 118
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 117
    invoke-virtual {v7, v0, v8}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "newHolder":Ljava/lang/Object;
    goto :goto_2

    .line 120
    .end local v4    # "newHolder":Ljava/lang/Object;
    :cond_6
    sget-object v7, Lc8/xy;->ActivityThread_installProvider:Lc8/Dy;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 121
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 120
    invoke-virtual {v7, v0, v8}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "newHolder":Ljava/lang/Object;
    goto/16 :goto_2

    .line 126
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v4    # "newHolder":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":Landroid/os/Bundle;
    :cond_7
    const-string/jumbo v7, "holder"

    check-cast v2, Landroid/app/IActivityManager$ContentProviderHolder;

    .end local v2    # "holder":Ljava/lang/Object;
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 139
    .end local v3    # "info":Landroid/content/pm/ProviderInfo;
    .end local v6    # "result":Landroid/os/Bundle;
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
