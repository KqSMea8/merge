.class public Lc8/sIb;
.super Ljava/lang/Object;
.source "AlibcBasePromotionSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tIb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromotionTokenInfo"
.end annotation


# instance fields
.field public time:J

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/sIb;->token:Ljava/lang/String;

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/sIb;->time:J

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/sIb;->token:Ljava/lang/String;

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/sIb;->time:J

    .line 205
    iput-object p1, p0, Lc8/sIb;->token:Ljava/lang/String;

    .line 206
    iput-wide p2, p0, Lc8/sIb;->time:J

    .line 207
    return-void
.end method

.method public static parser(Lorg/json/JSONObject;)Lc8/sIb;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/sIb;

    const-string/jumbo v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lc8/sIb;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "token : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/sIb;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/sIb;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
