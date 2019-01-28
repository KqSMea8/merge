.class public Lc8/kfn;
.super Ljava/lang/Object;
.source "DownloadAccManager.java"

# interfaces
.implements Lc8/Ben;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ofn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ofn;


# direct methods
.method constructor <init>(Lc8/ofn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ofn;

    .prologue
    .line 378
    iput-object p1, p0, Lc8/kfn;->this$0:Lc8/ofn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/youku/service/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 382
    iget-object v0, p0, Lc8/kfn;->this$0:Lc8/ofn;

    invoke-static {v0}, Lc8/ofn;->access$600(Lc8/ofn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lc8/kfn;->this$0:Lc8/ofn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/ofn;->startDownloadAcc(Z)Z

    .line 385
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/youku/service/download/DownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 390
    return-void
.end method
