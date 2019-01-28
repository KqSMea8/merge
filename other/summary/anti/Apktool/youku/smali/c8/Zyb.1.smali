.class public final Lc8/Zyb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gzb;->createRegisterTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field final synthetic val$isCommitDetail:Z

.field final synthetic val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lc8/Zyb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/Zyb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/Zyb;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object p4, p0, Lc8/Zyb;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-boolean p5, p0, Lc8/Zyb;->val$isCommitDetail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 403
    :try_start_0
    const-string/jumbo v0, "register stat event"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "module"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/Zyb;->val$module:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lc8/Zyb;->val$monitorPoint:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    sget-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v1, p0, Lc8/Zyb;->val$module:Ljava/lang/String;

    iget-object v2, p0, Lc8/Zyb;->val$monitorPoint:Ljava/lang/String;

    iget-object v3, p0, Lc8/Zyb;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v4, p0, Lc8/Zyb;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v5, p0, Lc8/Zyb;->val$isCommitDetail:Z

    invoke-interface/range {v0 .. v5}, Lc8/kzb;->register4(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v6

    .line 406
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v6}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
