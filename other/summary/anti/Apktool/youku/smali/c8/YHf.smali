.class public Lc8/YHf;
.super Ljava/lang/Object;
.source "RealTimeUploadController.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x1e

.field private static final DEFAULT_LOGNUM:I = 0x1e

.field private static final DEFAULT_LOGSIZE:I = 0xc8

.field private static final MAX_DURATOIN:I = 0xe10

.field private static final MAX_INTERVAL:I = 0x78

.field private static final MAX_LOGNUM:I = 0x64

.field private static final MAX_LOGSIZE:I = 0xc8

.field private static final MIN_INTERVAL:I = 0xa

.field private static final MIN_LOGNUM:I = 0x1

.field private static final MIN_LOGSIZE:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lc8/YHf;


# instance fields
.field private currentLogNum:I

.field private interval:I

.field private isStop:Z

.field private logNum:I

.field private logSize:I

.field private mDuration:J

.field private mEndTime:J

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreUploadTime:J

.field private mRetryTimes:I

.field private mStrategy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private networkCondition:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lc8/YHf;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/YHf;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Lc8/YHf;

    invoke-direct {v0}, Lc8/YHf;-><init>()V

    sput-object v0, Lc8/YHf;->mInstance:Lc8/YHf;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v0, 0x1e

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lc8/YHf;->interval:I

    .line 41
    iput v0, p0, Lc8/YHf;->logNum:I

    .line 45
    const/16 v0, 0xc8

    iput v0, p0, Lc8/YHf;->logSize:I

    .line 51
    iput-wide v2, p0, Lc8/YHf;->mDuration:J

    .line 52
    iput-wide v2, p0, Lc8/YHf;->mEndTime:J

    .line 53
    iput-wide v2, p0, Lc8/YHf;->mPreUploadTime:J

    .line 54
    iput v1, p0, Lc8/YHf;->mRetryTimes:I

    .line 59
    iput-boolean v1, p0, Lc8/YHf;->isStop:Z

    .line 68
    return-void
.end method

.method public static getInstance()Lc8/YHf;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lc8/YHf;->mInstance:Lc8/YHf;

    return-object v0
.end method

.method private getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lc8/IHf;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getEndtime()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lc8/YHf;->mEndTime:J

    return-wide v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lc8/YHf;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lc8/YHf;->mRetryTimes:I

    return v0
.end method

.method public isFitToUpload(I)Z
    .locals 8
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-boolean v3, p0, Lc8/YHf;->isStop:Z

    if-eqz v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v2

    .line 149
    :cond_1
    iget v3, p0, Lc8/YHf;->currentLogNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/YHf;->currentLogNum:I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/YHf;->mPreUploadTime:J

    sub-long v0, v4, v6

    .line 151
    .local v0, "timeSpan":J
    iget v3, p0, Lc8/YHf;->logNum:I

    if-lez v3, :cond_2

    iget v3, p0, Lc8/YHf;->currentLogNum:I

    iget v4, p0, Lc8/YHf;->logNum:I

    if-ge v3, v4, :cond_4

    :cond_2
    iget v3, p0, Lc8/YHf;->logSize:I

    if-lez v3, :cond_3

    iget v3, p0, Lc8/YHf;->logSize:I

    if-ge p1, v3, :cond_4

    :cond_3
    iget v3, p0, Lc8/YHf;->interval:I

    if-lez v3, :cond_0

    iget v3, p0, Lc8/YHf;->interval:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 152
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the currentLogNum is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/YHf;->currentLogNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    iput v2, p0, Lc8/YHf;->currentLogNum:I

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/YHf;->mPreUploadTime:J

    .line 155
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isFitToUpload(IIJ)Z
    .locals 3
    .param p1, "size"    # I
    .param p2, "count"    # I
    .param p3, "timeSpan"    # J

    .prologue
    .line 162
    iget v0, p0, Lc8/YHf;->logNum:I

    if-lez v0, :cond_0

    iget v0, p0, Lc8/YHf;->logNum:I

    if-ge p2, v0, :cond_2

    :cond_0
    iget v0, p0, Lc8/YHf;->logSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lc8/YHf;->logSize:I

    if-ge p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lc8/YHf;->interval:I

    if-lez v0, :cond_3

    iget v0, p0, Lc8/YHf;->interval:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    .line 163
    :cond_2
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSatisfyNetworkCondition()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 170
    iget-boolean v7, p0, Lc8/YHf;->isStop:Z

    if-eqz v7, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v5

    .line 173
    :cond_1
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/YHf;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "currentNetworState":Ljava/lang/String;
    iget-object v7, p0, Lc8/YHf;->networkCondition:[Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lc8/YHf;->networkCondition:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_3

    .line 175
    iget-object v0, p0, Lc8/YHf;->networkCondition:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 176
    .local v1, "condition":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 177
    goto :goto_0

    .line 175
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "condition":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    const-string/jumbo v5, "WIFI"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    .line 183
    goto :goto_0

    :cond_4
    move v5, v6

    .line 186
    goto :goto_0
.end method

.method public isStop()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 206
    iget-boolean v3, p0, Lc8/YHf;->isStop:Z

    if-eqz v3, :cond_0

    .line 215
    :goto_0
    return v2

    .line 209
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, "currentTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The remain time is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lc8/YHf;->mEndTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    iget-wide v4, p0, Lc8/YHf;->mEndTime:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 212
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    :cond_1
    iput-boolean v2, p0, Lc8/YHf;->isStop:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Lc8/YHf;->mDuration:J

    .line 136
    iput-wide v0, p0, Lc8/YHf;->mEndTime:J

    .line 138
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 72
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 73
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lc8/YHf;->mDuration:J

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lc8/YHf;->mDuration:J

    goto :goto_0
.end method

.method public setNetworkCondition([Ljava/lang/String;)V
    .locals 0
    .param p1, "networks"    # [Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/YHf;->networkCondition:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/YHf;->mParams:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 89
    iput p1, p0, Lc8/YHf;->mRetryTimes:I

    .line 90
    return-void
.end method

.method public setStrategy(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "strategy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v4, 0xc8

    const/16 v3, 0x64

    const/16 v2, 0x1e

    .line 97
    iput-object p1, p0, Lc8/YHf;->mStrategy:Ljava/util/Map;

    .line 98
    const-string/jumbo v0, "interval"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lc8/YHf;->mStrategy:Ljava/util/Map;

    const-string/jumbo v1, "interval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lc8/YHf;->interval:I

    .line 100
    iget v0, p0, Lc8/YHf;->interval:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    iget v0, p0, Lc8/YHf;->interval:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 101
    :cond_0
    iput v2, p0, Lc8/YHf;->interval:I

    .line 104
    :cond_1
    iget v0, p0, Lc8/YHf;->interval:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lc8/YHf;->interval:I

    .line 105
    const-string/jumbo v0, "logNum"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lc8/YHf;->mStrategy:Ljava/util/Map;

    const-string/jumbo v1, "logNum"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lc8/YHf;->logNum:I

    .line 107
    iget v0, p0, Lc8/YHf;->logNum:I

    if-gt v0, v3, :cond_2

    iget v0, p0, Lc8/YHf;->logNum:I

    if-gtz v0, :cond_3

    .line 108
    :cond_2
    iput v2, p0, Lc8/YHf;->logNum:I

    .line 111
    :cond_3
    const-string/jumbo v0, "logSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lc8/YHf;->mStrategy:Ljava/util/Map;

    const-string/jumbo v1, "logSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lc8/YHf;->logSize:I

    .line 113
    iget v0, p0, Lc8/YHf;->logSize:I

    if-gt v0, v4, :cond_4

    iget v0, p0, Lc8/YHf;->logSize:I

    if-ge v0, v3, :cond_5

    .line 114
    :cond_4
    iput v4, p0, Lc8/YHf;->logSize:I

    .line 117
    :cond_5
    iget v0, p0, Lc8/YHf;->logSize:I

    shl-int/lit8 v0, v0, 0xa

    iput v0, p0, Lc8/YHf;->logSize:I

    .line 118
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/YHf;->isStop:Z

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/YHf;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/YHf;->mEndTime:J

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/YHf;->mPreUploadTime:J

    .line 124
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/YHf;->networkCondition:[Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/YHf;->isStop:Z

    .line 130
    iput-wide v2, p0, Lc8/YHf;->mEndTime:J

    .line 131
    iput-wide v2, p0, Lc8/YHf;->mPreUploadTime:J

    .line 132
    return-void
.end method
