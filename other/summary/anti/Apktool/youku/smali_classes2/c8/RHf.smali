.class public Lc8/RHf;
.super Ljava/lang/Object;
.source "LogFileUploadManager.java"

# interfaces
.implements Lc8/PHf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/SHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TLogUploadListener"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field final synthetic this$0:Lc8/SHf;


# direct methods
.method public constructor <init>(Lc8/SHf;Ljava/lang/String;)V
    .locals 0
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lc8/RHf;->this$0:Lc8/SHf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p2, p0, Lc8/RHf;->fileName:Ljava/lang/String;

    .line 465
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errType"    # Ljava/lang/String;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v0, p0, Lc8/RHf;->this$0:Lc8/SHf;

    iget-object v1, p0, Lc8/RHf;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lc8/SHf;->uploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lc8/RHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$800(Lc8/SHf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lc8/RHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$800(Lc8/SHf;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    :cond_0
    return-void
.end method

.method public onSucessed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "originalFilePath"    # Ljava/lang/String;
    .param p2, "urlLocation"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lc8/RHf;->this$0:Lc8/SHf;

    invoke-virtual {v0, p1, p2}, Lc8/SHf;->uploadSucessed(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lc8/RHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$800(Lc8/SHf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lc8/RHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$800(Lc8/SHf;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    :cond_0
    return-void
.end method
