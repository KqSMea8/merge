.class public Lc8/xKj;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zKj;

.field final synthetic val$cachePath:Ljava/lang/String;

.field final synthetic val$downloadPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/zKj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zKj;

    .prologue
    .line 73
    iput-object p1, p0, Lc8/xKj;->this$0:Lc8/zKj;

    iput-object p2, p0, Lc8/xKj;->val$cachePath:Ljava/lang/String;

    iput-object p3, p0, Lc8/xKj;->val$downloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 77
    iget-object v4, p0, Lc8/xKj;->this$0:Lc8/zKj;

    iget-object v4, v4, Lc8/zKj;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lc8/xKj;->val$cachePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/zKj;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 78
    .local v0, "apkInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lc8/xKj;->this$0:Lc8/zKj;

    invoke-virtual {v4, v0}, Lc8/zKj;->checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "newApkdlUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    new-instance v1, Lc8/tKj;

    invoke-direct {v1}, Lc8/tKj;-><init>()V

    .line 84
    .local v1, "fd":Lc8/tKj;
    invoke-virtual {v1, v3}, Lc8/tKj;->setFileUrl(Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lc8/xKj;->val$downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lc8/tKj;->setSavePath(Ljava/lang/String;)V

    .line 86
    new-instance v4, Lc8/wKj;

    invoke-direct {v4, p0}, Lc8/wKj;-><init>(Lc8/xKj;)V

    invoke-virtual {v1, v4}, Lc8/tKj;->setProgressOutput(Lc8/rKj;)V

    .line 104
    invoke-virtual {v1}, Lc8/tKj;->start()V

    .line 113
    .end local v1    # "fd":Lc8/tKj;
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v4, p0, Lc8/xKj;->this$0:Lc8/zKj;

    invoke-static {v4}, Lc8/zKj;->access$000(Lc8/zKj;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Lc8/xKj;->val$cachePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 107
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lc8/xKj;->this$0:Lc8/zKj;

    invoke-static {v4}, Lc8/zKj;->access$000(Lc8/zKj;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
