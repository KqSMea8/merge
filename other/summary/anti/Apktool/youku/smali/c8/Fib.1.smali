.class public Lc8/Fib;
.super Lc8/Ehb;
.source "LoginByIVTokenTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ehb",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "login"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLoginCallback:Lc8/xgb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/xgb;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 34
    invoke-direct {p0}, Lc8/Ehb;-><init>()V

    .line 35
    iput-object p1, p0, Lc8/Fib;->mActivity:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lc8/Fib;->mLoginCallback:Lc8/xgb;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lc8/Fib;)Lc8/xgb;
    .locals 1
    .param p0, "x0"    # Lc8/Fib;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Fib;->mLoginCallback:Lc8/xgb;

    return-object v0
.end method

.method private doWhenResultFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/Dib;

    invoke-direct {v1, p0, p1, p2}, Lc8/Dib;-><init>(Lc8/Fib;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method private doWhenResultOk()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/Eib;

    invoke-direct {v1, p0}, Lc8/Eib;-><init>(Lc8/Fib;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Fib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-static {}, Lc8/Shb;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    new-instance v1, Lc8/Zgb;

    invoke-direct {v1}, Lc8/Zgb;-><init>()V

    .line 43
    .local v1, "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    const/4 v2, -0x1

    iput v2, v1, Lc8/Zgb;->code:I

    .line 44
    const-string/jumbo v2, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v2}, Lc8/Yhb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/Zgb;->message:Ljava/lang/String;

    .line 45
    iget v2, v1, Lc8/Zgb;->code:I

    iget-object v3, v1, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lc8/Fib;->doWhenResultFail(ILjava/lang/String;)V

    .line 62
    .end local v1    # "result":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Ljava/lang/String;>;"
    :goto_0
    return-object v6

    .line 49
    :cond_0
    sget-object v2, Lc8/eib;->INSTANCE:Lc8/eib;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v2, v3, v4, v5}, Lc8/eib;->loginByIVToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/Zgb;

    move-result-object v0

    .line 50
    .local v0, "loginReturnData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    if-eqz v0, :cond_1

    iget-object v2, v0, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 51
    :cond_1
    sget-object v2, Lc8/Wgb;->SYSTEM_EXCEPTION:Lc8/Wgb;

    iget v2, v2, Lc8/Wgb;->code:I

    sget-object v3, Lc8/Wgb;->SYSTEM_EXCEPTION:Lc8/Wgb;

    iget-object v3, v3, Lc8/Wgb;->message:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lc8/Fib;->doWhenResultFail(ILjava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    iget v2, v0, Lc8/Zgb;->code:I

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_3

    .line 56
    sget-object v3, Lc8/Bgb;->credentialService:Lc8/rhb;

    iget-object v2, v0, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v2, Lc8/Vgb;

    invoke-interface {v3, v2}, Lc8/rhb;->refreshWhenLogin(Lc8/Vgb;)V

    .line 57
    invoke-direct {p0}, Lc8/Fib;->doWhenResultOk()V

    goto :goto_0

    .line 60
    :cond_3
    iget v2, v0, Lc8/Zgb;->code:I

    iget-object v3, v0, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lc8/Fib;->doWhenResultFail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doFinally()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    const/16 v2, 0x271a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v0

    .line 68
    .local v0, "errorMessage":Lc8/Mgb;
    const-string/jumbo v2, "login"

    invoke-static {v2, v0, p1}, Lc8/Jhb;->log(Ljava/lang/String;Lc8/Mgb;Ljava/lang/Throwable;)V

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "code"

    const-string/jumbo v3, "10010"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v2, Lc8/vhb;

    invoke-static {v2}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vhb;

    sget-object v3, Lc8/oib;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    iget v2, v0, Lc8/Mgb;->code:I

    iget-object v3, v0, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lc8/Fib;->doWhenResultFail(ILjava/lang/String;)V

    .line 74
    return-void
.end method
