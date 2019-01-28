.class public Lc8/Lfb;
.super Ljava/lang/Object;
.source "AccountLinkComponent.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qfb;->handleBindEvent(ILjava/lang/String;Lc8/xgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qfb;

.field final synthetic val$code:I

.field final synthetic val$ibb:Ljava/lang/String;

.field final synthetic val$loginCallback:Lc8/xgb;


# direct methods
.method constructor <init>(Lc8/Qfb;ILc8/xgb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qfb;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/Lfb;->this$0:Lc8/Qfb;

    iput p2, p0, Lc8/Lfb;->val$code:I

    iput-object p3, p0, Lc8/Lfb;->val$loginCallback:Lc8/xgb;

    iput-object p4, p0, Lc8/Lfb;->val$ibb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "handleBindEvent auto login fail"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lc8/Lfb;->this$0:Lc8/Qfb;

    const/4 v1, 0x1

    iget v2, p0, Lc8/Lfb;->val$code:I

    iget-object v3, p0, Lc8/Lfb;->val$ibb:Ljava/lang/String;

    iget-object v4, p0, Lc8/Lfb;->val$loginCallback:Lc8/xgb;

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Qfb;->goBindTmpActivity(IILjava/lang/String;Lc8/xgb;)V

    .line 82
    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 2
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 65
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "handleBindEvent auto login success"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lc8/Lfb;->val$code:I

    const/16 v1, 0x2728

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lc8/Lfb;->this$0:Lc8/Qfb;

    iget-object v1, p0, Lc8/Lfb;->val$loginCallback:Lc8/xgb;

    invoke-virtual {v0, v1}, Lc8/Qfb;->bindConfirmActivity(Lc8/xgb;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lc8/Lfb;->val$loginCallback:Lc8/xgb;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lc8/Lfb;->val$loginCallback:Lc8/xgb;

    sget-object v1, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v1}, Lc8/hib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 72
    :cond_2
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    sget-object v1, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v1}, Lc8/hib;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    goto :goto_0
.end method
