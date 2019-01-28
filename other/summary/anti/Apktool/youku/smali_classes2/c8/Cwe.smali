.class public Lc8/Cwe;
.super Ljava/lang/Object;
.source "WeiboAppManager.java"


# static fields
.field private static final SDK_INT_FILE_NAME:Ljava/lang/String; = "weibo_for_sdk.json"

.field private static final TAG:Ljava/lang/String;

.field private static final WEIBOG3_NAME_URI:Landroid/net/Uri;

.field private static final WEIBO_IDENTITY_ACTION:Ljava/lang/String; = "com.sina.weibo.action.sdkidentity"

.field private static final WEIBO_NAME_URI:Landroid/net/Uri;

.field private static sInstance:Lc8/Cwe;


# instance fields
.field private mContext:Landroid/content/Context;

.field private wbAppInfo:Lc8/Pwe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lc8/Cwe;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Cwe;->TAG:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lc8/Cwe;->WEIBO_NAME_URI:Landroid/net/Uri;

    .line 25
    const-string/jumbo v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lc8/Cwe;->WEIBOG3_NAME_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Cwe;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lc8/Cwe;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-class v1, Lc8/Cwe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Cwe;->sInstance:Lc8/Cwe;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lc8/Cwe;

    invoke-direct {v0, p0}, Lc8/Cwe;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Cwe;->sInstance:Lc8/Cwe;

    .line 42
    :cond_0
    sget-object v0, Lc8/Cwe;->sInstance:Lc8/Cwe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queryWbInfoByAsset(Landroid/content/Context;)Lc8/Pwe;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.sina.weibo.action.sdkidentity"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 140
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 155
    :cond_1
    return-object v0

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 144
    .local v0, "appInfo":Lc8/Pwe;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 145
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 146
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 149
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 150
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lc8/Cwe;->parseWbInfoByAsset(Ljava/lang/String;)Lc8/Pwe;

    move-result-object v5

    .line 151
    .local v5, "tempInfo":Lc8/Pwe;
    if-eqz v5, :cond_3

    .line 152
    move-object v0, v5

    goto :goto_0
.end method

.method private queryWbInfoByProvider(Landroid/content/Context;)Lc8/Pwe;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 88
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lc8/Cwe;->WEIBO_NAME_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 89
    if-nez v9, :cond_1

    .line 90
    sget-object v2, Lc8/Cwe;->WEIBOG3_NAME_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 91
    if-nez v9, :cond_1

    .line 92
    const/16 v16, 0x0

    .line 124
    if-eqz v9, :cond_0

    .line 125
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_0
    :goto_0
    return-object v16

    .line 95
    :cond_1
    :try_start_1
    const-string/jumbo v2, "support_api"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 96
    .local v14, "supportApiIndex":I
    const-string/jumbo v2, "package"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 97
    .local v11, "packageIndex":I
    const-string/jumbo v2, "sso_activity"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 98
    .local v8, "authActivityIndex":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    const/4 v15, -0x1

    .line 100
    .local v15, "supportApiInt":I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 102
    .local v13, "supportApi":Ljava/lang/String;
    :try_start_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    .line 106
    :goto_1
    :try_start_3
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 107
    .local v12, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 108
    .local v7, "authActivity":Ljava/lang/String;
    if-lez v8, :cond_2

    .line 109
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 111
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lc8/Awe;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    new-instance v16, Lc8/Pwe;

    invoke-direct/range {v16 .. v16}, Lc8/Pwe;-><init>()V

    .line 113
    .local v16, "wbAppInfo":Lc8/Pwe;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lc8/Pwe;->setPackageName(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lc8/Pwe;->setSupportVersion(I)V

    .line 115
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lc8/Pwe;->setAuthActivityName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    :cond_3
    if-eqz v9, :cond_0

    .line 125
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 103
    .end local v7    # "authActivity":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v16    # "wbAppInfo":Lc8/Pwe;
    :catch_0
    move-exception v10

    .line 104
    .local v10, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 121
    .end local v8    # "authActivityIndex":I
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "packageIndex":I
    .end local v13    # "supportApi":Ljava/lang/String;
    .end local v14    # "supportApiIndex":I
    .end local v15    # "supportApiInt":I
    :catch_1
    move-exception v10

    .line 122
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v2, Lc8/Cwe;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    if-eqz v9, :cond_4

    .line 125
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 128
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    const/16 v16, 0x0

    goto :goto_0

    .line 124
    .restart local v8    # "authActivityIndex":I
    .restart local v11    # "packageIndex":I
    .restart local v14    # "supportApiIndex":I
    :cond_5
    if-eqz v9, :cond_4

    .line 125
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 124
    .end local v8    # "authActivityIndex":I
    .end local v11    # "packageIndex":I
    .end local v14    # "supportApiIndex":I
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_6

    .line 125
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private queryWbInfoInternal(Landroid/content/Context;)Lc8/Pwe;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1}, Lc8/Cwe;->queryWbInfoByProvider(Landroid/content/Context;)Lc8/Pwe;

    move-result-object v1

    .line 58
    .local v1, "appInfoProvider":Lc8/Pwe;
    invoke-direct {p0, p1}, Lc8/Cwe;->queryWbInfoByAsset(Landroid/content/Context;)Lc8/Pwe;

    move-result-object v0

    .line 59
    .local v0, "appInfoAsset":Lc8/Pwe;
    if-eqz v1, :cond_1

    move v3, v2

    .line 60
    .local v3, "hasProvider":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 61
    .local v2, "hasAsset":Z
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {v1}, Lc8/Pwe;->getSupportVersion()I

    move-result v4

    invoke-virtual {v0}, Lc8/Pwe;->getSupportVersion()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 76
    .end local v1    # "appInfoProvider":Lc8/Pwe;
    :cond_0
    :goto_2
    return-object v1

    .end local v2    # "hasAsset":Z
    .end local v3    # "hasProvider":Z
    .restart local v1    # "appInfoProvider":Lc8/Pwe;
    :cond_1
    move v3, v4

    .line 59
    goto :goto_0

    .restart local v3    # "hasProvider":Z
    :cond_2
    move v2, v4

    .line 60
    goto :goto_1

    .restart local v2    # "hasAsset":Z
    :cond_3
    move-object v1, v0

    .line 65
    goto :goto_2

    .line 68
    :cond_4
    if-nez v3, :cond_0

    .line 71
    if-eqz v2, :cond_5

    move-object v1, v0

    .line 72
    goto :goto_2

    .line 76
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized getWbAppInfo()Lc8/Pwe;
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Cwe;->wbAppInfo:Lc8/Pwe;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lc8/Cwe;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lc8/Cwe;->queryWbInfoInternal(Landroid/content/Context;)Lc8/Pwe;

    move-result-object v0

    iput-object v0, p0, Lc8/Cwe;->wbAppInfo:Lc8/Pwe;

    .line 53
    :cond_0
    iget-object v0, p0, Lc8/Cwe;->wbAppInfo:Lc8/Pwe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseWbInfoByAsset(Ljava/lang/String;)Lc8/Pwe;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x0

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v8, v9

    .line 199
    :cond_0
    :goto_0
    return-object v8

    .line 167
    :cond_1
    const/4 v3, 0x0

    .line 169
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lc8/Cwe;->mContext:Landroid/content/Context;

    const/4 v11, 0x2

    .line 170
    invoke-virtual {v10, p1, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, "appContext":Landroid/content/Context;
    const/16 v10, 0x1000

    new-array v1, v10, [B

    .line 174
    .local v1, "buf":[B
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "weibo_for_sdk.json"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v6, "sbContent":Ljava/lang/StringBuilder;
    :goto_1
    const/4 v10, 0x0

    const/16 v11, 0x1000

    invoke-virtual {v3, v1, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .local v5, "readNum":I
    if-eq v5, v12, :cond_3

    .line 177
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 190
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "buf":[B
    .end local v5    # "readNum":I
    .end local v6    # "sbContent":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v10, Lc8/Cwe;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-eqz v3, :cond_2

    .line 195
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move-object v8, v9

    .line 199
    goto :goto_0

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v1    # "buf":[B
    .restart local v5    # "readNum":I
    .restart local v6    # "sbContent":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lc8/Cwe;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lc8/Awe;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-nez v10, :cond_6

    .line 193
    :cond_4
    if-eqz v3, :cond_5

    .line 195
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    move-object v8, v9

    .line 196
    goto :goto_0

    .line 182
    :cond_6
    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v10, "support_api"

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 184
    .local v7, "supportApi":I
    new-instance v8, Lc8/Pwe;

    invoke-direct {v8}, Lc8/Pwe;-><init>()V

    .line 185
    .local v8, "wbAppInfo":Lc8/Pwe;
    invoke-virtual {v8, p1}, Lc8/Pwe;->setPackageName(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v8, v7}, Lc8/Pwe;->setSupportVersion(I)V

    .line 187
    const-string/jumbo v10, "authActivityName"

    const-string/jumbo v11, "com.sina.weibo.SSOActivity"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lc8/Pwe;->setAuthActivityName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    if-eqz v3, :cond_0

    .line 195
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 193
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "buf":[B
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "readNum":I
    .end local v6    # "sbContent":Ljava/lang/StringBuilder;
    .end local v7    # "supportApi":I
    .end local v8    # "wbAppInfo":Lc8/Pwe;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_7

    .line 195
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 196
    :cond_7
    :goto_4
    throw v9

    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v1    # "buf":[B
    .restart local v5    # "readNum":I
    .restart local v6    # "sbContent":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v10

    goto :goto_3

    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "buf":[B
    .end local v5    # "readNum":I
    .end local v6    # "sbContent":Ljava/lang/StringBuilder;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    goto :goto_4
.end method
