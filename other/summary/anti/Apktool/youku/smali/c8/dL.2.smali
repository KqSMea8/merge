.class public Lc8/dL;
.super Ljava/lang/Object;
.source "StrategyResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsInfo"
.end annotation


# instance fields
.field public final aisleses:[Lc8/cL;

.field public final clear:Z

.field public final cname:Ljava/lang/String;

.field public final effectNow:Z

.field public final etag:Ljava/lang/String;

.field public final host:Ljava/lang/String;

.field public final ips:[Ljava/lang/String;

.field public final isHot:I

.field public final notModified:Z

.field public final safeAisles:Ljava/lang/String;

.field public final sips:[Ljava/lang/String;

.field public final ttl:I

.field public final unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string/jumbo v6, "host"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/dL;->host:Ljava/lang/String;

    .line 74
    const-string/jumbo v6, "ttl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lc8/dL;->ttl:I

    .line 75
    const-string/jumbo v6, "safeAisles"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/dL;->safeAisles:Ljava/lang/String;

    .line 76
    const-string/jumbo v6, "cname"

    invoke-virtual {p1, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/dL;->cname:Ljava/lang/String;

    .line 77
    const-string/jumbo v6, "unit"

    invoke-virtual {p1, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/dL;->unit:Ljava/lang/String;

    .line 78
    const-string/jumbo v6, "isHot"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lc8/dL;->isHot:I

    .line 79
    const-string/jumbo v6, "clear"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lc8/dL;->clear:Z

    .line 80
    const-string/jumbo v6, "etag"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/dL;->etag:Ljava/lang/String;

    .line 81
    const-string/jumbo v6, "notModified"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_1

    :goto_1
    iput-boolean v7, p0, Lc8/dL;->notModified:Z

    .line 82
    const-string/jumbo v6, "effectNow"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lc8/dL;->effectNow:Z

    .line 84
    const-string/jumbo v6, "ips"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 85
    .local v3, "ipArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 87
    .local v4, "length":I
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Lc8/dL;->ips:[Ljava/lang/String;

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 89
    iget-object v6, p0, Lc8/dL;->ips:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v3    # "ipArray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :cond_0
    move v6, v8

    .line 79
    goto :goto_0

    :cond_1
    move v7, v8

    .line 81
    goto :goto_1

    .line 92
    .restart local v3    # "ipArray":Lorg/json/JSONArray;
    :cond_2
    iput-object v9, p0, Lc8/dL;->ips:[Ljava/lang/String;

    .line 95
    :cond_3
    const-string/jumbo v6, "sips"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 96
    .local v5, "sipArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 97
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 98
    .restart local v4    # "length":I
    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Lc8/dL;->sips:[Ljava/lang/String;

    .line 99
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_5

    .line 100
    iget-object v6, p0, Lc8/dL;->sips:[Ljava/lang/String;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 103
    .end local v2    # "i":I
    .end local v4    # "length":I
    :cond_4
    iput-object v9, p0, Lc8/dL;->sips:[Ljava/lang/String;

    .line 106
    :cond_5
    const-string/jumbo v6, "aisles"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 107
    .local v0, "aislesArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_6

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 109
    .local v1, "arrayLength":I
    new-array v6, v1, [Lc8/cL;

    iput-object v6, p0, Lc8/dL;->aisleses:[Lc8/cL;

    .line 110
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v1, :cond_7

    .line 111
    iget-object v6, p0, Lc8/dL;->aisleses:[Lc8/cL;

    new-instance v7, Lc8/cL;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lc8/cL;-><init>(Lorg/json/JSONObject;)V

    aput-object v7, v6, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 114
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    :cond_6
    iput-object v9, p0, Lc8/dL;->aisleses:[Lc8/cL;

    .line 116
    :cond_7
    return-void
.end method
