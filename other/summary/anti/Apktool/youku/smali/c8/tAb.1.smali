.class public Lc8/tAb;
.super Lc8/Xzb;
.source "Log.java"


# annotations
.annotation runtime Lc8/fAb;
    value = "log"
.end annotation


# static fields
.field public static final DEFAULT_PRIORITY:Ljava/lang/String; = "3"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private static final EVENTID_INTERVAL:I = 0xc3500
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field public static final FIELD_NAME_PRIORITY:Ljava/lang/String; = "priority"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field public static final FIELD_NAME_TIME:Ljava/lang/String; = "time"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UTLog"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field


# instance fields
.field public _index:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "_index"
    .end annotation
.end field

.field private arg1:Ljava/lang/String;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private arg2:Ljava/lang/String;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private arg3:Ljava/lang/String;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private args:Ljava/util/Map;
    .annotation runtime Lc8/eAb;
    .end annotation

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

.field private content:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "content"
    .end annotation
.end field

.field public eventId:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "eventId"
    .end annotation
.end field

.field private page:Ljava/lang/String;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field public priority:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "priority"
    .end annotation
.end field

.field public streamId:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "streamId"
    .end annotation
.end field

.field public time:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "time"
    .end annotation
.end field

.field private topicId:I
    .annotation runtime Lc8/eAb;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 38
    const-string/jumbo v0, "3"

    iput-object v0, p0, Lc8/tAb;->priority:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tAb;->time:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/tAb;->_index:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lc8/tAb;->topicId:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 38
    const-string/jumbo v0, "3"

    iput-object v0, p0, Lc8/tAb;->priority:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tAb;->time:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/tAb;->_index:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lc8/tAb;->topicId:I

    .line 86
    iput-object p2, p0, Lc8/tAb;->eventId:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lc8/tAb;->page:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lc8/tAb;->arg1:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lc8/tAb;->arg2:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lc8/tAb;->arg3:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lc8/tAb;->args:Ljava/util/Map;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tAb;->time:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lc8/tAb;->createIndex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tAb;->_index:Ljava/lang/String;

    .line 94
    invoke-static {}, Lc8/oAb;->getInstance()Lc8/oAb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/oAb;->getLogLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tAb;->priority:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lc8/tAb;->buildLogContent()V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "priority"    # Ljava/lang/String;
    .param p3, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "streamId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 38
    const-string/jumbo v1, "3"

    iput-object v1, p0, Lc8/tAb;->priority:Ljava/lang/String;

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/tAb;->time:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, ""

    iput-object v1, p0, Lc8/tAb;->_index:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lc8/tAb;->topicId:I

    .line 75
    iput-object p1, p0, Lc8/tAb;->priority:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p2}, Lc8/tAb;->buildStreamId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/tAb;->streamId:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lc8/tAb;->eventId:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/tAb;->time:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lc8/tAb;->createIndex()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/tAb;->_index:Ljava/lang/String;

    .line 80
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/tAb;->_index:Ljava/lang/String;

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p4}, Lc8/mAb;->assemble(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/tAb;->setContent(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private addEventIdInterval(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "rawLogContent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Lc8/mAb;->disassemble(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 123
    .local v1, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lc8/mAb;->getEventId(Ljava/util/Map;)I

    move-result v2

    .line 124
    .local v2, "rawEventId":I
    const v3, 0xc3500

    add-int v0, v2, v3

    .line 125
    .local v0, "eventId":I
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v1}, Lc8/mAb;->assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildStreamId(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "streamId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 174
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    :goto_0
    return-object v2

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 178
    if-ltz v1, :cond_1

    .line 179
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 186
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private createIndex()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 190
    const-string/jumbo v1, ""

    .line 191
    .local v1, "startTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/qAb;->getInstance()Lc8/qAb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/qAb;->getSessionTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "sesstionTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_0
    :goto_0
    const-string/jumbo v2, "2202"

    iget-object v3, p0, Lc8/tAb;->eventId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    const-string/jumbo v2, "%s%06d,2202_%06d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {}, Lc8/qAb;->getInstance()Lc8/qAb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/qAb;->logIndexIncrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {}, Lc8/qAb;->getInstance()Lc8/qAb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/qAb;->m2202LogIndexIncrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_1
    return-object v2

    .line 196
    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 202
    :cond_2
    const-string/jumbo v2, "%s%06d"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {}, Lc8/qAb;->getInstance()Lc8/qAb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/qAb;->logIndexIncrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public buildLogContent()V
    .locals 9

    .prologue
    .line 164
    iget-object v0, p0, Lc8/tAb;->time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/tAb;->time:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v0, p0, Lc8/tAb;->page:Ljava/lang/String;

    iget-object v1, p0, Lc8/tAb;->eventId:Ljava/lang/String;

    iget-object v2, p0, Lc8/tAb;->arg1:Ljava/lang/String;

    iget-object v3, p0, Lc8/tAb;->arg2:Ljava/lang/String;

    iget-object v4, p0, Lc8/tAb;->arg3:Ljava/lang/String;

    iget-object v5, p0, Lc8/tAb;->args:Ljava/util/Map;

    iget-object v6, p0, Lc8/tAb;->_index:Ljava/lang/String;

    iget-object v7, p0, Lc8/tAb;->time:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lc8/mAb;->assemble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "content":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lc8/tAb;->setContent(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public getCipherContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lc8/tAb;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 104
    .local v2, "temp":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lc8/tAb;->content:Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lc8/yBb;->decode([BI)[B

    move-result-object v0

    .line 105
    .local v0, "lBContent":[B
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lc8/WBb;->rc4([B)[B

    move-result-object v1

    .line 107
    .local v1, "lBRc4":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "temp":Ljava/lang/String;
    .local v3, "temp":Ljava/lang/String;
    move-object v2, v3

    .line 112
    .end local v0    # "lBContent":[B
    .end local v1    # "lBRc4":[B
    .end local v3    # "temp":Ljava/lang/String;
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getPlus80WLogContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lc8/tAb;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/tAb;->addEventIdInterval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicId()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lc8/tAb;->topicId:I

    return v0
.end method

.method public setCipherContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherContent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    iput-object p1, p0, Lc8/tAb;->content:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lc8/WBb;->rc4([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lc8/yBb;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lc8/tAb;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTopicId(I)V
    .locals 0
    .param p1, "topicid"    # I

    .prologue
    .line 211
    iput p1, p0, Lc8/tAb;->topicId:I

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Log [eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/tAb;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/tAb;->_index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
