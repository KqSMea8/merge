.class public Lc8/RC;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field public static final TYPE_SIGN_MTOP:I = 0x0

.field public static final TYPE_SIGN_TOP:I = 0x1

.field private static mSecurityManager:Lc8/RC;


# instance fields
.field private isInit:Z

.field private mSecretUtil:Lcom/taobao/securityjni/SecretUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lc8/RC;->mSecurityManager:Lc8/RC;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/RC;->isInit:Z

    .line 44
    iget-boolean v0, p0, Lc8/RC;->isInit:Z

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lc8/RC;->init(Landroid/content/ContextWrapper;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/RC;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lc8/RC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/RC;->mSecurityManager:Lc8/RC;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lc8/RC;

    invoke-direct {v0}, Lc8/RC;-><init>()V

    sput-object v0, Lc8/RC;->mSecurityManager:Lc8/RC;

    .line 68
    :cond_0
    sget-object v0, Lc8/RC;->mSecurityManager:Lc8/RC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMTopSign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v2, p0, Lc8/RC;->isInit:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    const/4 v2, 0x0

    .line 132
    :goto_0
    return-object v2

    .line 108
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v1, "signParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "api"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    const-string/jumbo v2, "API"

    const-string/jumbo v3, "api"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_2
    const-string/jumbo v2, "data"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 113
    const-string/jumbo v2, "DATA"

    const-string/jumbo v3, "data"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    const-string/jumbo v2, "ecode"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 116
    const-string/jumbo v2, "ECODE"

    const-string/jumbo v3, "ecode"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_4
    const-string/jumbo v2, "imei"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 119
    const-string/jumbo v2, "IMEI"

    const-string/jumbo v3, "imei"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_5
    const-string/jumbo v2, "imsi"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 122
    const-string/jumbo v2, "IMSI"

    const-string/jumbo v3, "imsi"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_6
    const-string/jumbo v2, "t"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 125
    const-string/jumbo v2, "TIME"

    const-string/jumbo v3, "t"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_7
    const-string/jumbo v2, "v"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 128
    const-string/jumbo v2, "V"

    const-string/jumbo v3, "v"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_8
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 131
    .local v0, "dataCtx":Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 132
    iget-object v2, p0, Lc8/RC;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/securityjni/SecretUtil;->getSign(Ljava/util/HashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getTopSing(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "params":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lc8/RC;->isInit:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    .line 145
    :cond_1
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 146
    .local v0, "dataCtx":Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 147
    iget-object v1, p0, Lc8/RC;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    invoke-virtual {v1, p1, v0}, Lcom/taobao/securityjni/SecretUtil;->getTopSign(Ljava/util/TreeMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-boolean v1, p0, Lc8/RC;->isInit:Z

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    return-object v1

    .line 162
    :cond_1
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 163
    .local v0, "dataCtx":Lcom/taobao/securityjni/tools/DataContext;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 164
    iget-object v1, p0, Lc8/RC;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    invoke-virtual {v1, p1, p2, v0}, Lcom/taobao/securityjni/SecretUtil;->getLoginTopToken(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSecBody(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/ContextWrapper;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-boolean v3, p0, Lc8/RC;->isInit:Z

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v2

    .line 179
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 180
    .local v1, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v0

    .line 182
    .local v0, "sbComp":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p3}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v0, p2, p3}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v0    # "sbComp":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .end local v1    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSign(ILjava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "signType"    # I
    .param p3, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lc8/RC;->isInit:Z

    if-nez v1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 94
    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 85
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .line 86
    .local v0, "sign":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Lc8/RC;->getMTopSign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_0

    .line 91
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    check-cast p2, Ljava/util/TreeMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Lc8/RC;->getTopSing(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Landroid/content/ContextWrapper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/xB;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/securityjni/GlobalInit;->SetGlobalAppKey(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/taobao/securityjni/SecretUtil;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/SecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lc8/RC;->mSecretUtil:Lcom/taobao/securityjni/SecretUtil;

    .line 57
    invoke-static {p1}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/RC;->isInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
