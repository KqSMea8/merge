.class public Lc8/MWc;
.super Ljava/lang/Object;
.source "UploaderStats.java"


# static fields
.field private static volatile sHasRegister:Z


# instance fields
.field private info:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private stage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lc8/MWc;->sHasRegister:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "stage"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/MWc;->module:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lc8/MWc;->stage:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lc8/MWc;->info:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "stage"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-boolean v4, Lc8/MWc;->sHasRegister:Z

    if-nez v4, :cond_0

    .line 42
    const/4 v4, 0x1

    sput-boolean v4, Lc8/MWc;->sHasRegister:Z

    .line 43
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "stage"

    .line 44
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "info"

    .line 45
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "module"

    .line 46
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 47
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 48
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v4, "crashreporter_upload"

    const-string/jumbo v5, "playlink_upload"

    invoke-static {v4, v5, v2, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 51
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v2    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 52
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "stage"

    invoke-virtual {v1, v4, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 53
    const-string/jumbo v4, "info"

    invoke-virtual {v1, v4, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 54
    const-string/jumbo v4, "module"

    invoke-virtual {v1, v4, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 56
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 57
    .local v3, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "crashreporter_upload"

    const-string/jumbo v5, "playlink_upload"

    invoke-static {v4, v5, v1, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 59
    return-void
.end method
