.class public final Lc8/yz;
.super Landroid/os/Handler;
.source "SecurityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SecurityBundleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bz;


# direct methods
.method public constructor <init>(Lc8/Bz;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 260
    iput-object p1, p0, Lc8/yz;->this$0:Lc8/Bz;

    .line 261
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 262
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 267
    if-eqz p1, :cond_0

    iget-object v4, p0, Lc8/yz;->this$0:Lc8/Bz;

    invoke-static {v4}, Lc8/Bz;->access$000(Lc8/Bz;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/Seq;

    .line 276
    .local v0, "bundle":Lc8/Seq;
    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v4

    invoke-interface {v0}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/iB;->isUpdated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v4

    invoke-interface {v0}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/iB;->isDexPatched(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    invoke-interface {v0}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "location":Ljava/lang/String;
    const/4 v1, 0x0

    .line 282
    .local v1, "file":Ljava/io/File;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 283
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc8/dy;->getBundleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_0

    .line 288
    :cond_2
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/taobao/atlas/runtime/RuntimeVariables;->verifyBundle(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 290
    const-string/jumbo v4, "SecurityBundleListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Security check failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lc8/Az;

    iget-object v5, p0, Lc8/yz;->this$0:Lc8/Bz;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lc8/Az;-><init>(Lc8/Bz;Lc8/xz;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    iget-object v4, p0, Lc8/yz;->this$0:Lc8/Bz;

    invoke-static {v4, v7}, Lc8/Bz;->access$002(Lc8/Bz;Z)Z

    .line 297
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_3
    iget-object v4, p0, Lc8/yz;->this$0:Lc8/Bz;

    invoke-static {v4}, Lc8/Bz;->access$000(Lc8/Bz;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Security check success. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method
