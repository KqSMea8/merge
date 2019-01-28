.class public Lc8/bGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/aGb;


# static fields
.field private static a:Lc8/bGb;

.field private static final c:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/bGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/bGb;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "Init"

    const-string/jumbo v1, "\u65e0\u5b89\u5168\u56fe\u7247"

    invoke-static {v0, v1}, Lc8/hGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Init"

    const-string/jumbo v1, "\u5b89\u5168\u56fe\u7247\u4e0d\u5408\u6cd5"

    invoke-static {v0, v1}, Lc8/hGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private analyzeOpenId(Ljava/lang/String;[B)Ljava/lang/Long;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lc8/vFb;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getOpenSDKComp()Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v2, "AppIDKey"

    const-string/jumbo v3, "OpenIDSaltKey"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;->analyzeOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/bGb;
    .locals 2

    const-class v1, Lc8/bGb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/bGb;->a:Lc8/bGb;

    if-nez v0, :cond_0

    new-instance v0, Lc8/bGb;

    invoke-direct {v0}, Lc8/bGb;-><init>()V

    sput-object v0, Lc8/bGb;->a:Lc8/bGb;

    :cond_0
    sget-object v0, Lc8/bGb;->a:Lc8/bGb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public analyzeItemId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/alibaba/wireless/security/open/opensdk/IOpenSDKComponent;->OPEN_BIZ_IID:[B

    invoke-direct {p0, p1, v0}, Lc8/bGb;->analyzeOpenId(Ljava/lang/String;[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lc8/bGb;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/bGb;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v1, Lc8/bGb;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lc8/bGb;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/bGb;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v1, Lc8/bGb;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/bGb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized init(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;)Lc8/wHb;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "securityInitTime"

    invoke-virtual {p1, v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->timeBegin(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc8/bGb;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer()Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;->initialize(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    iput-object v1, p0, Lc8/bGb;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    iget-object v1, p0, Lc8/bGb;->b:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/bGb;->d:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lc8/bGb;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bGb;->e:Z

    const-string/jumbo v0, "securityInitTime"

    invoke-virtual {p1, v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4Init;->timeEnd(Ljava/lang/String;)V

    invoke-static {}, Lc8/wHb;->newSuccessResult()Lc8/wHb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    invoke-direct {p0, v1}, Lc8/bGb;->a(I)V

    sget-object v1, Lc8/bGb;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v0

    const-string/jumbo v1, "SecurityGuard init error"

    invoke-static {v0, v1}, Lc8/wHb;->newFailureResult(ILjava/lang/String;)Lc8/wHb;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lc8/bGb;->a(I)V

    sget-object v1, Lc8/bGb;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecurityGuard init error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SecurityGuard init error"

    invoke-static {v0, v1}, Lc8/wHb;->newFailureResult(ILjava/lang/String;)Lc8/wHb;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lc8/wHb;->newSuccessResult()Lc8/wHb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
