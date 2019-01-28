.class public final Lc8/mVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field final synthetic val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lc8/mVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/mVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/mVb;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object p4, p0, Lc8/mVb;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 276
    :try_start_0
    const-string/jumbo v1, "\u5916\u6ce8\u518c\u4efb\u52a1\u5f00\u59cb\u6267\u884c"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "module"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/mVb;->val$module:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "monitorPoint"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lc8/mVb;->val$monitorPoint:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v2, p0, Lc8/mVb;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lc8/mVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v4, p0, Lc8/mVb;->val$measures:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v5, p0, Lc8/mVb;->val$dimensions:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/kzb;->register3(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
