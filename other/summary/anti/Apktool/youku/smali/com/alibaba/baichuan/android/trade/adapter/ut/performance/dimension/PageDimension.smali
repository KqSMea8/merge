.class public Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;
.super Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public pageType:Ljava/lang/String;

.field public taokeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->taokeType:Ljava/lang/String;

    return-void
.end method

.method public static getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 2

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "pageType"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "taokeType"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->pageType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->taokeType:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->e:Ljava/lang/String;

    const-string/jumbo v1, "getDimensionValues"

    const-string/jumbo v2, "pageType/taokeType is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->e:Ljava/lang/String;

    const-string/jumbo v1, "getDimensionValues:pageType/taokeType is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;->getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "pageType"

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->pageType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v1, "taokeType"

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/PageDimension;->taokeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0
.end method
