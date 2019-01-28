.class public final Lc8/dVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LVb;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$event:I

.field final synthetic val$statisticsInterval:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 997
    iput p1, p0, Lc8/dVb;->val$event:I

    iput p2, p0, Lc8/dVb;->val$statisticsInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1001
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget v2, p0, Lc8/dVb;->val$event:I

    iget v3, p0, Lc8/dVb;->val$statisticsInterval:I

    invoke-interface {v1, v2, v3}, Lc8/kzb;->setStatisticsInterval2(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
