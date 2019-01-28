.class public final Lc8/JVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field final synthetic val$measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lc8/JVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/JVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/JVb;->val$dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object p4, p0, Lc8/JVb;->val$measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 947
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v2, p0, Lc8/JVb;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lc8/JVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v4, p0, Lc8/JVb;->val$dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-object v5, p0, Lc8/JVb;->val$measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/kzb;->stat_commit3(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
