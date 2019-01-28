.class public Lc8/MVb;
.super Ljava/lang/Object;
.source "AppMonitorStatTable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private module:Ljava/lang/String;

.field private monitorPoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lc8/MVb;->module:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lc8/MVb;->monitorPoint:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public registerRowAndColumn(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)Lc8/MVb;
    .locals 2
    .param p1, "rows"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p2, "columns"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "isDetail"    # Z

    .prologue
    .line 19
    iget-object v0, p0, Lc8/MVb;->module:Ljava/lang/String;

    iget-object v1, p0, Lc8/MVb;->monitorPoint:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1, p3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 20
    return-object p0
.end method

.method public update(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lc8/MVb;
    .locals 2
    .param p1, "rowValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "columnValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/MVb;->module:Ljava/lang/String;

    iget-object v1, p0, Lc8/MVb;->monitorPoint:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 25
    return-object p0
.end method
