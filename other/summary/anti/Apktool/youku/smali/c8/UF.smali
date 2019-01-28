.class public Lc8/UF;
.super Ljava/lang/Object;
.source "WVMonitorData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "resStat"
.end annotation


# instance fields
.field public end:J

.field public fromType:I

.field public netStat:Lc8/bG;

.field public protocolType:Ljava/lang/String;

.field public start:J

.field public statusCode:I

.field public tcpTime:J

.field public verifyError:I

.field public verifyResTime:J

.field public verifyTime:J

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lc8/UF;->verifyError:I

    .line 150
    iput-wide v2, p0, Lc8/UF;->verifyResTime:J

    .line 151
    iput-wide v2, p0, Lc8/UF;->verifyTime:J

    .line 152
    iput-wide v2, p0, Lc8/UF;->tcpTime:J

    .line 153
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/UF;->protocolType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toUtMap()Ljava/util/Map;
    .locals 6
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
    const-wide/16 v4, 0x0

    .line 162
    iget-object v1, p0, Lc8/UF;->netStat:Lc8/bG;

    if-nez v1, :cond_4

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget v1, p0, Lc8/UF;->statusCode:I

    if-lez v1, :cond_0

    .line 168
    const-string/jumbo v1, "statusCode"

    iget v2, p0, Lc8/UF;->statusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    iget-object v1, p0, Lc8/UF;->via:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 171
    const-string/jumbo v1, "via"

    iget-object v2, p0, Lc8/UF;->via:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    iget-wide v2, p0, Lc8/UF;->start:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 174
    const-string/jumbo v1, "start"

    iget-wide v2, p0, Lc8/UF;->start:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    iget-wide v2, p0, Lc8/UF;->end:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 177
    const-string/jumbo v1, "end"

    iget-wide v2, p0, Lc8/UF;->end:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_3
    const-string/jumbo v1, "fromType"

    iget v2, p0, Lc8/UF;->fromType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v1, "protocolType"

    iget-object v2, p0, Lc8/UF;->protocolType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v1, "tcpTime"

    iget-wide v2, p0, Lc8/UF;->tcpTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "verifyError"

    iget v2, p0, Lc8/UF;->verifyError:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v1, "verifyResTime"

    iget-wide v2, p0, Lc8/UF;->verifyResTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v1, "verifyTime"

    iget-wide v2, p0, Lc8/UF;->verifyTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object v0

    .line 165
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lc8/UF;->netStat:Lc8/bG;

    invoke-static {v1}, Lc8/WF;->toUtMap(Lc8/bG;)Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_0
.end method
