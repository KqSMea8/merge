.class public Lc8/Zob;
.super Lc8/Tcf;
.source "WXHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/epb;->sendRequestByHttp(Lc8/nxb;Lc8/QXf;Lc8/SXf;Lc8/CVf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/epb;

.field final synthetic val$networkTracker:Lc8/nxb;

.field final synthetic val$onHttpListener:Lc8/CVf;

.field final synthetic val$request:Lc8/QXf;

.field final synthetic val$response:Lc8/SXf;


# direct methods
.method constructor <init>(Lc8/epb;Ljava/lang/String;Lc8/QXf;Lc8/SXf;Lc8/nxb;Lc8/CVf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/epb;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lc8/Zob;->this$0:Lc8/epb;

    iput-object p3, p0, Lc8/Zob;->val$request:Lc8/QXf;

    iput-object p4, p0, Lc8/Zob;->val$response:Lc8/SXf;

    iput-object p5, p0, Lc8/Zob;->val$networkTracker:Lc8/nxb;

    iput-object p6, p0, Lc8/Zob;->val$onHttpListener:Lc8/CVf;

    invoke-direct {p0, p2}, Lc8/Tcf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 262
    const-string/jumbo v0, "TBWXHttpAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[sendRequestByHttp] url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Zob;->val$request:Lc8/QXf;

    iget-object v2, v2, Lc8/QXf;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lc8/Zob;->val$response:Lc8/SXf;

    const-string/jumbo v1, "wx_network_error"

    iput-object v1, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lc8/Zob;->this$0:Lc8/epb;

    iget-object v1, p0, Lc8/Zob;->val$request:Lc8/QXf;

    iget-object v2, p0, Lc8/Zob;->val$response:Lc8/SXf;

    invoke-static {v0, v1, v2}, Lc8/epb;->access$000(Lc8/epb;Lc8/QXf;Lc8/SXf;)Lc8/uM;

    move-result-object v8

    .line 265
    .local v8, "anetRequest":Lc8/uM;
    iget-object v0, p0, Lc8/Zob;->val$networkTracker:Lc8/nxb;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lc8/Zob;->val$networkTracker:Lc8/nxb;

    invoke-virtual {v0, v8}, Lc8/nxb;->preRequest(Lc8/uM;)V

    .line 268
    :cond_0
    new-instance v9, Lc8/sN;

    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v9, v0}, Lc8/sN;-><init>(Landroid/content/Context;)V

    .line 269
    .local v9, "network":Lc8/hM;
    new-instance v0, Lc8/dpb;

    iget-object v1, p0, Lc8/Zob;->this$0:Lc8/epb;

    iget-object v2, p0, Lc8/Zob;->val$networkTracker:Lc8/nxb;

    iget-object v3, p0, Lc8/Zob;->val$response:Lc8/SXf;

    iget-object v4, p0, Lc8/Zob;->val$onHttpListener:Lc8/CVf;

    iget-object v5, p0, Lc8/Zob;->val$request:Lc8/QXf;

    iget-object v5, v5, Lc8/QXf;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lc8/dpb;-><init>(Lc8/epb;Lc8/nxb;Lc8/SXf;Lc8/CVf;Ljava/lang/String;J)V

    invoke-interface {v9, v8, v10, v10, v0}, Lc8/hM;->asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;

    .line 270
    const-string/jumbo v0, "TBWXHttpAdapter"

    const-string/jumbo v1, "out--[sendRequestByHttp]"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method
