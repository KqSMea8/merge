.class public final Lc8/lVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$isCommitDetail:Z

.field final synthetic val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lc8/lVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/lVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/lVb;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-boolean p4, p0, Lc8/lVb;->val$isCommitDetail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 249
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v2, p0, Lc8/lVb;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lc8/lVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v4, p0, Lc8/lVb;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-boolean v5, p0, Lc8/lVb;->val$isCommitDetail:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/kzb;->register2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
