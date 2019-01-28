.class public Lc8/Lzb;
.super Lc8/Gzb;
.source "UTRealtimeConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Kzb;
    }
.end annotation


# static fields
.field private static final DefaultEffectiveTime:I = 0xa

.field private static s_instance:Lc8/Lzb;


# instance fields
.field private mEffectiveTime:I

.field private mHashcode:I

.field private mSample:I

.field private mTopicItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Kzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lc8/Lzb;->s_instance:Lc8/Lzb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/Gzb;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Lzb;->mTopicItemMap:Ljava/util/Map;

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lc8/Lzb;->mEffectiveTime:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lc8/Lzb;->mSample:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lc8/Lzb;->mHashcode:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lc8/Lzb;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static convertStringToInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 251
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getInstance()Lc8/Lzb;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/Lzb;->s_instance:Lc8/Lzb;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lc8/Lzb;

    invoke-direct {v0}, Lc8/Lzb;-><init>()V

    sput-object v0, Lc8/Lzb;->s_instance:Lc8/Lzb;

    .line 34
    :cond_0
    sget-object v0, Lc8/Lzb;->s_instance:Lc8/Lzb;

    return-object v0
.end method

.method private getTopicId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "aEventID"    # Ljava/lang/String;
    .param p2, "aPage"    # Ljava/lang/String;
    .param p3, "aArg1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/Lzb;->mTopicItemMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lc8/Lzb;->mTopicItemMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kzb;

    .line 108
    .local v0, "lItem":Lc8/Kzb;
    if-nez v0, :cond_1

    .line 117
    .end local v0    # "lItem":Lc8/Kzb;
    :cond_0
    :goto_0
    return v1

    .line 112
    .restart local v0    # "lItem":Lc8/Kzb;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    :cond_2
    invoke-virtual {v0, p2, p3}, Lc8/Kzb;->getTopicId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getEffectiveTime()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lc8/Lzb;->mEffectiveTime:I

    return v0
.end method

.method public getOrangeGroupnames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ut_realtime"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public declared-synchronized getTopicId(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, ""

    .line 88
    .local v1, "lEventID":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lEventID":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 92
    .restart local v1    # "lEventID":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 93
    .local v2, "lPage":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lPage":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 97
    .restart local v2    # "lPage":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 98
    .local v0, "lArg1":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lArg1":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 102
    .restart local v0    # "lArg1":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1, v2, v0}, Lc8/Lzb;->getTopicId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit p0

    return v3

    .line 87
    .end local v0    # "lArg1":Ljava/lang/String;
    .end local v1    # "lEventID":Ljava/lang/String;
    .end local v2    # "lPage":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isRealtimeClosed()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->isRealtimeServiceClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->isHttpService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->isAllServiceClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRealtimeLogSampled()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lc8/Lzb;->isRealtimeClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getDebugSamplingOption()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 56
    goto :goto_0

    .line 59
    :cond_2
    iget v3, p0, Lc8/Lzb;->mHashcode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 60
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "utdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "ffffffffffffffffffffffff"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-static {v0}, Lc8/aCb;->hashCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lc8/Lzb;->mHashcode:I

    .line 67
    .end local v0    # "utdid":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, ""

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "hashcode"

    aput-object v5, v4, v1

    iget v5, p0, Lc8/Lzb;->mHashcode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, "sample"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lc8/Lzb;->mSample:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget v3, p0, Lc8/Lzb;->mHashcode:I

    rem-int/lit16 v3, v3, 0x2710

    iget v4, p0, Lc8/Lzb;->mSample:I

    if-ge v3, v4, :cond_0

    move v1, v2

    .line 70
    goto :goto_0
.end method

.method public onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    .locals 0
    .param p1, "aGroupname"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lc8/Gzb;->onNonOrangeConfigurationArrive(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public declared-synchronized onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "aGroupname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aConfContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x3

    .line 127
    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, ""

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "aGroupname"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "aConfContent"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lc8/Lzb;->resetRealtimeConf()V

    .line 129
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "lKey":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, "lValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 134
    const-string/jumbo v6, "time"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    invoke-static {v3}, Lc8/Lzb;->convertStringToInt(Ljava/lang/String;)I

    move-result v5

    .line 136
    .local v5, "time":I
    if-lt v5, v10, :cond_0

    const/16 v6, 0x14

    if-gt v5, v6, :cond_0

    .line 137
    iput v5, p0, Lc8/Lzb;->mEffectiveTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "lKey":Ljava/lang/String;
    .end local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "lValue":Ljava/lang/String;
    .end local v5    # "time":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 139
    .restart local v0    # "lKey":Ljava/lang/String;
    .restart local v1    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "lValue":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "sample"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    invoke-static {v3}, Lc8/Lzb;->convertStringToInt(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "sample":I
    if-ltz v4, :cond_0

    const/16 v6, 0x2710

    if-gt v4, v6, :cond_0

    .line 142
    iput v4, p0, Lc8/Lzb;->mSample:I

    goto :goto_0

    .line 145
    .end local v4    # "sample":I
    :cond_2
    invoke-static {v3}, Lc8/Kzb;->parseJson(Ljava/lang/String;)Lc8/Kzb;

    move-result-object v2

    .line 146
    .local v2, "lUTSampleItem":Lc8/Kzb;
    if-eqz v2, :cond_0

    .line 147
    iget-object v6, p0, Lc8/Lzb;->mTopicItemMap:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "lKey":Ljava/lang/String;
    .end local v2    # "lUTSampleItem":Lc8/Kzb;
    .end local v3    # "lValue":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public resetRealtimeConf()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/Lzb;->mTopicItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lc8/Lzb;->mEffectiveTime:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lc8/Lzb;->mSample:I

    .line 84
    return-void
.end method
