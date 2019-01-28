.class public abstract Lc8/Aib;
.super Lc8/Ihb;
.source "AbsLoginByCodeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ihb",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsLoginByCodeTask"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lc8/Ihb;-><init>(Landroid/app/Activity;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Aib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lc8/Aib;->login([Ljava/lang/String;)Lc8/Zgb;

    move-result-object v4

    .line 33
    .local v4, "resultData":Lc8/Zgb;, "Lcom/ali/auth/third/core/model/RpcResponse<Lcom/ali/auth/third/core/model/LoginReturnData;>;"
    iget v0, v4, Lc8/Zgb;->code:I

    .line 34
    .local v0, "code":I
    const-string/jumbo v6, "AbsLoginByCodeTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "asyncExecute code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/16 v6, 0xbb8

    if-ne v0, v6, :cond_2

    .line 37
    :try_start_0
    iget-object v6, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 39
    sget-object v7, Lc8/rib;->credentialService:Lc8/rhb;

    iget-object v6, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v6, Lc8/Vgb;

    invoke-interface {v7, v6}, Lc8/rhb;->refreshWhenLogin(Lc8/Vgb;)V

    .line 41
    :cond_0
    sget-object v6, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v7, Lc8/yib;

    invoke-direct {v7, p0}, Lc8/yib;-><init>(Lc8/Aib;)V

    invoke-interface {v6, v7}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 79
    :cond_1
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 48
    :cond_2
    const/16 v6, 0x3304

    if-ne v0, v6, :cond_3

    .line 49
    iget-object v6, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v6, Lc8/Vgb;

    iget-object v1, v6, Lc8/Vgb;->h5Url:Ljava/lang/String;

    .line 50
    .local v1, "doubleCheckUrl":Ljava/lang/String;
    const-string/jumbo v6, "AbsLoginByCodeTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "asyncExecute doubleCheckUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 52
    iget-object v5, p0, Lc8/Aib;->activity:Landroid/app/Activity;

    .line 56
    .local v5, "startFrom":Landroid/app/Activity;
    invoke-static {v5}, Lc8/mjb;->setActivity(Landroid/app/Activity;)V

    .line 57
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/ali/auth/third/ui/LoginWebViewActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "url"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v7, "token"

    iget-object v6, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v6, Lc8/Vgb;

    iget-object v6, v6, Lc8/Vgb;->token:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string/jumbo v7, "scene"

    iget-object v6, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v6, Lc8/Vgb;

    iget-object v6, v6, Lc8/Vgb;->scene:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v6, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v6, Lc8/Vgb;

    iget-object v6, v6, Lc8/Vgb;->token:Ljava/lang/String;

    sput-object v6, Lcom/ali/auth/third/ui/LoginWebViewActivity;->token:Ljava/lang/String;

    .line 62
    iget-object v6, v4, Lc8/Zgb;->returnValue:Ljava/lang/Object;

    check-cast v6, Lc8/Vgb;

    iget-object v6, v6, Lc8/Vgb;->scene:Ljava/lang/String;

    sput-object v6, Lcom/ali/auth/third/ui/LoginWebViewActivity;->scene:Ljava/lang/String;

    .line 63
    iget-object v6, p0, Lc8/Aib;->activity:Landroid/app/Activity;

    sget v7, Lc8/nib;->OPEN_DOUBLE_CHECK:I

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "doubleCheckUrl":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "startFrom":Landroid/app/Activity;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v6, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v7, Lc8/zib;

    invoke-direct {v7, p0, v0, v4}, Lc8/zib;-><init>(Lc8/Aib;ILc8/Zgb;)V

    invoke-interface {v6, v7}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected abstract doWhenResultFail(ILjava/lang/String;)V
.end method

.method protected abstract doWhenResultOk()V
.end method

.method protected abstract login([Ljava/lang/String;)Lc8/Zgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation
.end method
