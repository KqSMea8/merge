.class public Lc8/vLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;

.field final synthetic val$isChannelProcess:Z

.field final synthetic val$isDownloadProcess:Z

.field final synthetic val$isMainProcess:Z

.field final synthetic val$ttid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/KLj;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 320
    iput-object p1, p0, Lc8/vLj;->this$0:Lc8/KLj;

    iput-object p2, p0, Lc8/vLj;->val$ttid:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/vLj;->val$isMainProcess:Z

    iput-boolean p4, p0, Lc8/vLj;->val$isChannelProcess:Z

    iput-boolean p5, p0, Lc8/vLj;->val$isDownloadProcess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 324
    iget-object v0, p0, Lc8/vLj;->this$0:Lc8/KLj;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-boolean v2, Lc8/KWc;->DEBUG:Z

    const-string/jumbo v3, "23570660"

    iget-object v4, p0, Lc8/vLj;->val$ttid:Ljava/lang/String;

    sget-object v5, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lc8/LHg;->initUTSDK(Landroid/app/Application;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-boolean v0, p0, Lc8/vLj;->val$isMainProcess:Z

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lc8/vLj;->this$0:Lc8/KLj;

    iget-object v1, p0, Lc8/vLj;->val$ttid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc8/KLj;->access$000(Lc8/KLj;Ljava/lang/String;Z)V

    .line 332
    iget-object v0, p0, Lc8/vLj;->this$0:Lc8/KLj;

    invoke-static {v0}, Lc8/KLj;->access$100(Lc8/KLj;)V

    .line 333
    invoke-static {}, Lc8/RMg;->getInstance()Lc8/RMg;

    move-result-object v0

    iget-object v1, p0, Lc8/vLj;->this$0:Lc8/KLj;

    sget-boolean v2, Lc8/KWc;->DEBUG:Z

    invoke-virtual {v0, v1, v2}, Lc8/RMg;->init(Landroid/app/Application;Z)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-boolean v0, p0, Lc8/vLj;->val$isChannelProcess:Z

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lc8/vLj;->this$0:Lc8/KLj;

    iget-object v1, p0, Lc8/vLj;->val$ttid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc8/KLj;->access$000(Lc8/KLj;Ljava/lang/String;Z)V

    goto :goto_0

    .line 337
    :cond_2
    iget-boolean v0, p0, Lc8/vLj;->val$isDownloadProcess:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lc8/vLj;->this$0:Lc8/KLj;

    const-string/jumbo v1, "23570660"

    sget-object v2, Lc8/VLj;->versionName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/KLj;->access$200(Lc8/KLj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
