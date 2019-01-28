.class public final Lc8/yVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Ljava/lang/String;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lc8/yVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/yVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/yVb;->val$arg:Ljava/lang/String;

    iput-wide p4, p0, Lc8/yVb;->val$value:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 660
    :try_start_0
    sget-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v1, p0, Lc8/yVb;->val$module:Ljava/lang/String;

    iget-object v2, p0, Lc8/yVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v3, p0, Lc8/yVb;->val$arg:Ljava/lang/String;

    iget-wide v4, p0, Lc8/yVb;->val$value:D

    invoke-interface/range {v0 .. v5}, Lc8/kzb;->counter_commit2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v6

    .line 662
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v6}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
