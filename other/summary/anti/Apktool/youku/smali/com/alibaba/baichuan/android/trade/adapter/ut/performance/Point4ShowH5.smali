.class public Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;
.super Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public allTime:J

.field public analysisTime:J

.field public taokeTime:J

.field public urlHandleTime:J

.field public urlLoadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;-><init>()V

    return-void
.end method

.method public static getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 2

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v1, "analysisTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v1, "taokeTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v1, "urlHandleTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v1, "urlLoadTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v1, "allTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkData()Z
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->analysisTime:J

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->checkTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->taokeTime:J

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->checkTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlHandleTime:J

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->checkTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlLoadTime:J

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->checkTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->allTime:J

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->checkTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMeasureValues()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 4

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "analysisTime"

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->analysisTime:J

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "taokeTime"

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->taokeTime:J

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "urlHandleTime"

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlHandleTime:J

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "urlLoadTime"

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlLoadTime:J

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "allTime"

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->allTime:J

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    return-object v0
.end method

.method public getMonitorPoint()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "showH5"

    return-object v0
.end method

.method public timeBegin(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeBegin"

    const-string/jumbo v2, "type is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeBegin:type is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeBegin"

    const-string/jumbo v2, "type is not right"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeBegin:type is not right"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "analysisTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "taokeTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "urlHandleTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "urlLoadTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "allTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->analysisTime:J

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->taokeTime:J

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlHandleTime:J

    goto :goto_0

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlLoadTime:J

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->allTime:J

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6834d437 -> :sswitch_0
        -0x365e77f2 -> :sswitch_4
        -0x2c0b0c9e -> :sswitch_3
        0x2cc1c3e4 -> :sswitch_2
        0x37759569 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public timeEnd(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeEnd"

    const-string/jumbo v2, "type is null"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeEnd:type is null"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeEnd"

    const-string/jumbo v2, "type is not right"

    invoke-static {v0, v1, v2}, Lc8/UHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->c:Ljava/lang/String;

    const-string/jumbo v1, "timeEnd:type is not right"

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "analysisTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "taokeTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "urlHandleTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "urlLoadTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "allTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->analysisTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->analysisTime:J

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->taokeTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->taokeTime:J

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlHandleTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlHandleTime:J

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlLoadTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlLoadTime:J

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->allTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->allTime:J

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6834d437 -> :sswitch_0
        -0x365e77f2 -> :sswitch_4
        -0x2c0b0c9e -> :sswitch_3
        0x2cc1c3e4 -> :sswitch_2
        0x37759569 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Point4ShowH5{analysisTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->analysisTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", taokeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->taokeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", urlHandleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlHandleTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", urlLoadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->urlLoadTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", allTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4ShowH5;->allTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
