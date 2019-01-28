.class public Lc8/gUf;
.super Ljava/lang/Thread;
.source "HotPatchDownloaderListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hUf;->onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hUf;

.field final synthetic val$apkPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/hUf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lc8/gUf;->this$0:Lc8/hUf;

    iput-object p2, p0, Lc8/gUf;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v1

    iget-object v2, p0, Lc8/gUf;->val$apkPath:Ljava/lang/String;

    iget-object v3, p0, Lc8/gUf;->this$0:Lc8/hUf;

    invoke-static {v3}, Lc8/hUf;->access$100(Lc8/hUf;)Lc8/EUf;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/tUf;->loadDownloadedPatch(Ljava/lang/String;Lc8/EUf;)V

    .line 84
    iget-object v1, p0, Lc8/gUf;->this$0:Lc8/hUf;

    invoke-static {v1}, Lc8/hUf;->access$200(Lc8/hUf;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SafeMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.update.UpdateBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "updateType"

    const-string/jumbo v2, "hotpatch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "errorMsg"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lc8/gUf;->this$0:Lc8/hUf;

    invoke-static {v1}, Lc8/hUf;->access$000(Lc8/hUf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
