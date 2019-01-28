.class public Lc8/PFb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/QFb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OFb;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lc8/PFb;


# instance fields
.field private a:Lc8/hib;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/PFb;

    invoke-direct {v0}, Lc8/PFb;-><init>()V

    sput-object v0, Lc8/PFb;->INSTANCE:Lc8/PFb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/RFb;)V
    .locals 0

    invoke-direct {p0}, Lc8/PFb;-><init>()V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-class v0, Lc8/hib;

    invoke-static {v0}, Lc8/sgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hib;

    iput-object v0, p0, Lc8/PFb;->a:Lc8/hib;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Login"

    const-string/jumbo v1, "140102"

    invoke-static {v0, p2, v1}, Lc8/hGb;->sendUseabilityFailureForOtherErrmsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Login"

    const-string/jumbo v1, "140101"

    invoke-static {v0, p2, v1}, Lc8/hGb;->sendUseabilityFailureForOtherErrmsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lc8/PFb;)V
    .locals 0

    invoke-direct {p0}, Lc8/PFb;->a()V

    return-void
.end method

.method static synthetic a(Lc8/PFb;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/PFb;->a(ILjava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->TEST:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    invoke-static {v0}, Lc8/sgb;->setEnvironment(Lcom/ali/auth/third/core/config/Environment;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lc8/vFb;->environment:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;->PRE:Lcom/alibaba/baichuan/android/trade/AlibcContext$Environment;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/ali/auth/third/core/config/Environment;->PRE:Lcom/ali/auth/third/core/config/Environment;

    invoke-static {v0}, Lc8/sgb;->setEnvironment(Lcom/ali/auth/third/core/config/Environment;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ali/auth/third/core/config/Environment;->ONLINE:Lcom/ali/auth/third/core/config/Environment;

    invoke-static {v0}, Lc8/sgb;->setEnvironment(Lcom/ali/auth/third/core/config/Environment;)V

    goto :goto_0
.end method

.method static synthetic b(Lc8/PFb;)V
    .locals 0

    invoke-direct {p0}, Lc8/PFb;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    const-string/jumbo v0, "Login"

    invoke-static {v0}, Lc8/hGb;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lc8/PFb;
    .locals 1

    sget-object v0, Lc8/OFb;->a:Lc8/PFb;

    return-object v0
.end method


# virtual methods
.method public getSession()Lc8/ahb;
    .locals 1

    invoke-direct {p0}, Lc8/PFb;->a()V

    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    invoke-interface {v0}, Lc8/hib;->checkSessionValid()Z

    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    invoke-interface {v0}, Lc8/hib;->getSession()Lc8/ahb;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/PFb;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/PFb;->b:Z

    invoke-direct {p0}, Lc8/PFb;->b()V

    sget-boolean v0, Lc8/vFb;->isDebugMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/sgb;->turnOnDebug()V

    :cond_0
    sget-object v0, Lc8/vFb;->context:Landroid/content/Context;

    new-instance v1, Lc8/RFb;

    invoke-direct {v1, p0}, Lc8/RFb;-><init>(Lc8/PFb;)V

    invoke-static {v0, v1}, Lc8/sgb;->init(Landroid/content/Context;Lc8/wgb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLogin()Z
    .locals 1

    invoke-direct {p0}, Lc8/PFb;->a()V

    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    invoke-interface {v0}, Lc8/hib;->checkSessionValid()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/app/Activity;Lc8/qib;)V
    .locals 2

    invoke-direct {p0}, Lc8/PFb;->a()V

    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "login\u670d\u52a1\u4e3anull"

    invoke-interface {p2, v0, v1}, Lc8/qib;->onFailure(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    invoke-interface {v0, p2}, Lc8/hib;->logout(Lc8/qib;)V

    goto :goto_0
.end method

.method public showLogin(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;)V
    .locals 2

    invoke-direct {p0}, Lc8/PFb;->a()V

    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "login\u670d\u52a1\u4e3anull"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/PFb;->a:Lc8/hib;

    new-instance v1, Lc8/SFb;

    invoke-direct {v1, p0, p2}, Lc8/SFb;-><init>(Lc8/PFb;Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;)V

    invoke-interface {v0, p1, v1}, Lc8/hib;->auth(Landroid/app/Activity;Lc8/xgb;)V

    goto :goto_0
.end method

.method public trunOnDebug()V
    .locals 0

    invoke-static {}, Lc8/sgb;->turnOnDebug()V

    return-void
.end method
