.class public final Lc8/CVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DVb;->commit(Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 746
    iput-object p1, p0, Lc8/CVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/CVb;->val$monitorPoint:Ljava/lang/String;

    iput-wide p3, p0, Lc8/CVb;->val$value:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 750
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v2, p0, Lc8/CVb;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lc8/CVb;->val$monitorPoint:Ljava/lang/String;

    iget-wide v4, p0, Lc8/CVb;->val$value:D

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/kzb;->offlinecounter_commit(Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
