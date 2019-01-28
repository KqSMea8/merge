.class public Lc8/kib;
.super Ljava/lang/Object;
.source "LoginServiceImpl.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mib;->autoLogin(Lc8/xgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mib;

.field final synthetic val$loginCallback:Lc8/xgb;


# direct methods
.method constructor <init>(Lc8/mib;Lc8/xgb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mib;

    .prologue
    .line 237
    iput-object p1, p0, Lc8/kib;->this$0:Lc8/mib;

    iput-object p2, p0, Lc8/kib;->val$loginCallback:Lc8/xgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "auth auto login success"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lc8/kib;->val$loginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lc8/kib;->val$loginCallback:Lc8/xgb;

    invoke-interface {v0, p1, p2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 2
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 240
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "auth auto login success"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lc8/kib;->val$loginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lc8/kib;->val$loginCallback:Lc8/xgb;

    iget-object v1, p0, Lc8/kib;->this$0:Lc8/mib;

    invoke-virtual {v1}, Lc8/mib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 244
    :cond_0
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    iget-object v1, p0, Lc8/kib;->this$0:Lc8/mib;

    invoke-virtual {v1}, Lc8/mib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 247
    :cond_1
    sget-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_SUCCESS:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v0}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 248
    return-void
.end method
