.class public Lc8/mfn;
.super Ljava/lang/Thread;
.source "DownloadAccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ofn;->stopVipModel()V
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
    .line 454
    iput-object p1, p0, Lc8/mfn;->this$0:Lc8/ofn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 457
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 459
    :try_start_0
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ben;->disableVipMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
