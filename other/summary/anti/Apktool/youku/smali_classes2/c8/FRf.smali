.class public Lc8/FRf;
.super Ljava/lang/Object;
.source "UpdateBusiness.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mGroup:Ljava/lang/String;

.field public mIsOutApk:Z

.field public mTtid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mTtid"    # Ljava/lang/String;
    .param p3, "mGroup"    # Ljava/lang/String;
    .param p4, "isOutApk"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lc8/FRf;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lc8/FRf;->mTtid:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lc8/FRf;->mGroup:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lc8/FRf;->mIsOutApk:Z

    .line 30
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private isYunOS()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 82
    .local v3, "vmName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Lc8/FRf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "ro.yunos.version"

    aput-object v9, v7, v8

    invoke-static {v1, v4, v7}, Lc8/FRf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 84
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "java.vm.name"

    aput-object v9, v7, v8

    invoke-static {v1, v4, v7}, Lc8/FRf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "lemur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    move v4, v5

    :goto_1
    return v4

    :cond_2
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public queryApkUpdateInfo()Lcom/alibaba/fastjson/JSONObject;
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;

    iget-boolean v2, p0, Lc8/FRf;->mIsOutApk:Z

    invoke-direct {v0, v2}, Lcom/taobao/update/datasource/mtop/UpdateRequest;-><init>(Z)V

    .line 62
    .local v0, "request":Lcom/taobao/update/datasource/mtop/UpdateRequest;
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->brand:Ljava/lang/String;

    .line 63
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->model:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lc8/FRf;->mGroup:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->identifier:Ljava/lang/String;

    .line 65
    invoke-static {}, Lc8/BRf;->getVersionName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->appVersion:Ljava/lang/String;

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->apiLevel:J

    .line 67
    invoke-static {}, Lc8/BRf;->getHotPatchVersion()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->patchVersion:J

    .line 68
    invoke-static {}, Lc8/BRf;->getDexpatchVersion()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->dexpatchVersion:J

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "updateLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "main"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iput-object v1, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->updateTypes:Ljava/util/List;

    .line 75
    sget-object v2, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    iget-object v3, p0, Lc8/FRf;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lc8/FRf;->mTtid:Ljava/lang/String;

    iget-boolean v5, p0, Lc8/FRf;->mIsOutApk:Z

    invoke-virtual {v2, v0, v3, v4, v5}, Lc8/aQf;->invokePullApi(Ljava/io/Serializable;Landroid/content/Context;Ljava/lang/String;Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public queryUpdateInfo()Lcom/alibaba/fastjson/JSONObject;
    .locals 6

    .prologue
    .line 34
    new-instance v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;

    iget-boolean v2, p0, Lc8/FRf;->mIsOutApk:Z

    invoke-direct {v0, v2}, Lcom/taobao/update/datasource/mtop/UpdateRequest;-><init>(Z)V

    .line 35
    .local v0, "request":Lcom/taobao/update/datasource/mtop/UpdateRequest;
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->brand:Ljava/lang/String;

    .line 36
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->model:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lc8/FRf;->mGroup:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->identifier:Ljava/lang/String;

    .line 38
    invoke-static {}, Lc8/BRf;->getVersionName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->appVersion:Ljava/lang/String;

    .line 39
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->apiLevel:J

    .line 40
    invoke-static {}, Lc8/BRf;->getHotPatchVersion()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->patchVersion:J

    .line 41
    invoke-static {}, Lc8/BRf;->getDexpatchVersion()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->dexpatchVersion:J

    .line 42
    invoke-direct {p0}, Lc8/FRf;->isYunOS()Z

    move-result v2

    iput-boolean v2, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->isYunos:Z

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "updateLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/FRf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/BRf;->shouldEnableApkUpdate(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "main"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    const-string/jumbo v2, "dynamic"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string/jumbo v2, "hotpatch"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string/jumbo v2, "bundles"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string/jumbo v2, "andfix"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string/jumbo v2, "dexpatch"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iput-object v1, v0, Lcom/taobao/update/datasource/mtop/UpdateRequest;->updateTypes:Ljava/util/List;

    .line 56
    sget-object v2, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    iget-object v3, p0, Lc8/FRf;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lc8/FRf;->mTtid:Ljava/lang/String;

    iget-boolean v5, p0, Lc8/FRf;->mIsOutApk:Z

    invoke-virtual {v2, v0, v3, v4, v5}, Lc8/aQf;->invokePullApi(Ljava/io/Serializable;Landroid/content/Context;Ljava/lang/String;Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    return-object v2
.end method
