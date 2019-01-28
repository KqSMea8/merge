.class public Lc8/fzk;
.super Ljava/lang/Object;
.source "OfflineSubscribe.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jzk;->mergeOfflineSubscribeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jzk;


# direct methods
.method constructor <init>(Lc8/jzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jzk;

    .prologue
    .line 111
    iput-object p1, p0, Lc8/fzk;->this$0:Lc8/jzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "======merge failResult ====;failReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lc8/fzk;->this$0:Lc8/jzk;

    invoke-static {v0}, Lc8/jzk;->access$000(Lc8/jzk;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/fzk;->this$0:Lc8/jzk;

    invoke-static {v0}, Lc8/jzk;->access$000(Lc8/jzk;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.action.merger_failed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    :cond_0
    return-void
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 3
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/kzk;->clearOfflineSub()V

    .line 116
    iget-object v0, p0, Lc8/fzk;->this$0:Lc8/jzk;

    invoke-static {v0}, Lc8/jzk;->access$000(Lc8/jzk;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/fzk;->this$0:Lc8/jzk;

    invoke-static {v0}, Lc8/jzk;->access$000(Lc8/jzk;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.action.merger_success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    :cond_0
    return-void
.end method
