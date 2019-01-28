.class public Lc8/lfn;
.super Ljava/lang/Thread;
.source "DownloadAccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ofn;->startVipModel()V
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
    .line 438
    iput-object p1, p0, Lc8/lfn;->this$0:Lc8/ofn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 441
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 443
    :try_start_0
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lc8/ben;->enableVipMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
