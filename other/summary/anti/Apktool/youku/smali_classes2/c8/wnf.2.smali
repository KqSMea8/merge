.class public Lc8/wnf;
.super Ljava/lang/Object;
.source "OpenActivity.java"

# interfaces
.implements Lc8/xof;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/flowcustoms/OpenActivity;->startLinkInfoRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/flowcustoms/OpenActivity;


# direct methods
.method public constructor <init>(Lcom/taobao/flowcustoms/OpenActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    iget-object v0, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-virtual {v0, p1}, Lcom/taobao/flowcustoms/OpenActivity;->onLinkInfoError(Lorg/json/JSONObject;)V

    .line 96
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 76
    iget-object v1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-static {v1}, Lcom/taobao/flowcustoms/OpenActivity;->access$000(Lcom/taobao/flowcustoms/OpenActivity;)Lcom/taobao/flowcustoms/data/OpenParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/flowcustoms/data/OpenParams;->updateFromLinkInfoResponse(Lorg/json/JSONObject;)V

    .line 79
    iget-object v1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-static {v1}, Lcom/taobao/flowcustoms/OpenActivity;->access$000(Lcom/taobao/flowcustoms/OpenActivity;)Lcom/taobao/flowcustoms/data/OpenParams;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/flowcustoms/data/OpenParams;->jumpUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-virtual {v1}, Lcom/taobao/flowcustoms/OpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 81
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-static {v1}, Lcom/taobao/flowcustoms/OpenActivity;->access$000(Lcom/taobao/flowcustoms/OpenActivity;)Lcom/taobao/flowcustoms/data/OpenParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/flowcustoms/data/OpenParams;->trackTarget(Ljava/lang/String;)V

    .line 89
    .end local v0    # "data":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    iget-object v2, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-static {v2}, Lcom/taobao/flowcustoms/OpenActivity;->access$000(Lcom/taobao/flowcustoms/OpenActivity;)Lcom/taobao/flowcustoms/data/OpenParams;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Aof;->executePlugin(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)Z

    .line 91
    iget-object v1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-virtual {v1}, Lcom/taobao/flowcustoms/OpenActivity;->finish()V

    .line 92
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-static {v1}, Lcom/taobao/flowcustoms/OpenActivity;->access$000(Lcom/taobao/flowcustoms/OpenActivity;)Lcom/taobao/flowcustoms/data/OpenParams;

    move-result-object v1

    iget-object v2, p0, Lc8/wnf;->this$0:Lcom/taobao/flowcustoms/OpenActivity;

    invoke-static {v2}, Lcom/taobao/flowcustoms/OpenActivity;->access$000(Lcom/taobao/flowcustoms/OpenActivity;)Lcom/taobao/flowcustoms/data/OpenParams;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/flowcustoms/data/OpenParams;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/flowcustoms/data/OpenParams;->trackTarget(Ljava/lang/String;)V

    goto :goto_0
.end method
