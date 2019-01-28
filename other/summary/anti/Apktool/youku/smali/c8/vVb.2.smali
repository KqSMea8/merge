.class public final Lc8/vVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zVb;->setStatisticsInterval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$statisticsInterval:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 569
    iput p1, p0, Lc8/vVb;->val$statisticsInterval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 573
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget v2, p0, Lc8/vVb;->val$statisticsInterval:I

    invoke-interface {v1, v2}, Lc8/kzb;->counter_setStatisticsInterval(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
