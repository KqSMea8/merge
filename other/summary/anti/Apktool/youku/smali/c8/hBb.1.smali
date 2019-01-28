.class public Lc8/hBb;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lc8/XAb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nBb;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nBb;


# direct methods
.method constructor <init>(Lc8/nBb;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lc8/hBb;->this$0:Lc8/nBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadExcuted(J)V
    .locals 2
    .param p1, "count"    # J

    .prologue
    .line 84
    invoke-static {}, Lc8/fBb;->getInstance()Lc8/fBb;

    move-result-object v0

    iget-object v1, p0, Lc8/hBb;->this$0:Lc8/nBb;

    invoke-static {v1}, Lc8/nBb;->access$000(Lc8/nBb;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/fBb;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 85
    return-void
.end method
