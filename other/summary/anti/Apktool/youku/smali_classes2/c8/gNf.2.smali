.class public Lc8/gNf;
.super Landroid/content/BroadcastReceiver;
.source "DefaultLoginImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iNf;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iNf;


# direct methods
.method constructor <init>(Lc8/iNf;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lc8/gNf;->this$0:Lc8/iNf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    if-nez p2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string/jumbo v1, "mtopsdk.DefaultLoginImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Login Broadcast Received. action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_2
    const-string/jumbo v1, "NOTIFY_LOGIN_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    invoke-static {}, Lc8/mNf;->instance()Lc8/mNf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/mNf;->onLoginSuccess()V

    goto :goto_0

    .line 139
    :cond_3
    const-string/jumbo v1, "NOTIFY_LOGIN_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    invoke-static {}, Lc8/mNf;->instance()Lc8/mNf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/mNf;->onLoginFail()V

    goto :goto_0

    .line 141
    :cond_4
    const-string/jumbo v1, "NOTIFY_LOGIN_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Lc8/mNf;->instance()Lc8/mNf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/mNf;->onLoginCancel()V

    goto :goto_0
.end method
