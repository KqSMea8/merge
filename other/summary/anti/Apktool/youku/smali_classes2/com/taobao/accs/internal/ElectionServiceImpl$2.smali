.class public Lcom/taobao/accs/internal/ElectionServiceImpl$2;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/ElectionServiceImpl;->tryElection(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

.field final synthetic val$currentElectionPack:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ElectionServiceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    iput-object p2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$2;->val$currentElectionPack:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "tryElection"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "isPing"

    aput-object v3, v2, v4

    invoke-static {}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$200()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-static {}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "no need election, stop self"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/internal/ElectionServiceImpl;->stopSelf(Z)V

    .line 503
    :goto_0
    return-void

    .line 499
    :cond_0
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "tryElection curr host unreceive ping, try selectAppToElection"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "curr host"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$2;->val$currentElectionPack:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    iget-object v1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$2;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-static {v1}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$300(Lcom/taobao/accs/internal/ElectionServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "host invaid"

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$400(Lcom/taobao/accs/internal/ElectionServiceImpl;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
