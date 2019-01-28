.class public Lc8/shn;
.super Ljava/lang/Object;
.source "PassportServiceManager.java"

# interfaces
.implements Lc8/kko;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/thn;->initPassportSDK(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/thn;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/thn;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/thn;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/shn;->this$0:Lc8/thn;

    iput-object p2, p0, Lc8/shn;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string/jumbo v0, "YKLogin.PassportServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Passport init onFailure! aCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,aMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 5
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string/jumbo v2, "YKLogin.PassportServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Passport init onSuccess! aCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,aMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lc8/shn;->this$0:Lc8/thn;

    invoke-static {v2}, Lc8/thn;->access$000(Lc8/thn;)V

    .line 125
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v0

    .line 126
    .local v0, "isLogin":Z
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    .line 127
    .local v1, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    invoke-static {}, Lc8/YGo;->getInstance()Lc8/YGo;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lc8/YGo;->requestConfig(Ljava/lang/String;Z)V

    .line 130
    iget-object v2, p0, Lc8/shn;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lc8/rhn;

    invoke-direct {v3, p0, v0}, Lc8/rhn;-><init>(Lc8/shn;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 151
    const-class v2, Lc8/fhn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    const-class v2, Lc8/fhn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/fhn;

    invoke-interface {v2}, Lc8/fhn;->autoLogin()V

    .line 154
    :cond_0
    return-void

    .line 127
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
