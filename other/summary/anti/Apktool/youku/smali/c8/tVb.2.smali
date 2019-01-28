.class public final Lc8/tVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Ljava/lang/String;

.field final synthetic val$errorCode:Ljava/lang/String;

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lc8/tVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/tVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/tVb;->val$arg:Ljava/lang/String;

    iput-object p4, p0, Lc8/tVb;->val$errorCode:Ljava/lang/String;

    iput-object p5, p0, Lc8/tVb;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 545
    :try_start_0
    sget-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v1, p0, Lc8/tVb;->val$module:Ljava/lang/String;

    iget-object v2, p0, Lc8/tVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v3, p0, Lc8/tVb;->val$arg:Ljava/lang/String;

    iget-object v4, p0, Lc8/tVb;->val$errorCode:Ljava/lang/String;

    iget-object v5, p0, Lc8/tVb;->val$errorMsg:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lc8/kzb;->alarm_commitFail2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v6

    .line 547
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v6}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
