.class public abstract Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;
.super Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;-><init>()V

    return-void
.end method

.method public static getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initDimension()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    :cond_0
    return-void
.end method

.method public setPageType(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->initDimension()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    check-cast v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->pageType:Ljava/lang/String;

    return-void
.end method

.method public setTaokeType(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->initDimension()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    check-cast v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->taokeType:Ljava/lang/String;

    return-void
.end method
