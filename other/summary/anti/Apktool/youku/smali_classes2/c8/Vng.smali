.class public Lc8/Vng;
.super Ljava/lang/Object;
.source "ExperimentGroup.java"


# static fields
.field public static final EMPTY_GROUP:Lc8/Vng;

.field public static final SAMPLE_FACTOR:I = 0xf4240

.field public static TIME_STAMP:Lc8/fog;


# instance fields
.field public antId:I

.field public beginTime:J

.field public calculateMode:Ljava/lang/String;

.field public condition:Ljava/lang/String;

.field public endTime:J

.field public grey:J

.field public groupId:I

.field public groupName:Ljava/lang/String;

.field public groupOrder:I

.field public groupSize:I

.field public inWhiteList:Z

.field public name:Ljava/lang/String;

.field public pageName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public releaseId:I

.field public results:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Wng;",
            ">;"
        }
    .end annotation
.end field

.field public sampleRange:Lorg/json/JSONArray;

.field public status:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lc8/Vng;

    invoke-direct {v0}, Lc8/Vng;-><init>()V

    sput-object v0, Lc8/Vng;->EMPTY_GROUP:Lc8/Vng;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lc8/Vng;
    .locals 12
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 194
    new-instance v1, Lc8/Vng;

    invoke-direct {v1}, Lc8/Vng;-><init>()V

    .line 195
    .local v1, "group":Lc8/Vng;
    if-eqz p0, :cond_3

    .line 196
    const-string/jumbo v9, "releaseId"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lc8/Vng;->releaseId:I

    .line 197
    const-string/jumbo v9, "name"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/Vng;->name:Ljava/lang/String;

    .line 198
    const-string/jumbo v9, "type"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/Vng;->type:Ljava/lang/String;

    .line 199
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lc8/Vng;->pageName:Ljava/util/List;

    .line 200
    const-string/jumbo v9, "pageName"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "pageNames":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 202
    const/4 v8, 0x0

    .line 204
    .local v8, "start":I
    :goto_0
    const/16 v9, 0x2c

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .local v3, "index":I
    if-ltz v3, :cond_1

    .line 205
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "pageName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 207
    iget-object v9, v1, Lc8/Vng;->pageName:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    add-int/lit8 v8, v3, 0x1

    .line 210
    goto :goto_0

    .line 211
    .end local v6    # "pageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 212
    .restart local v6    # "pageName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 213
    iget-object v9, v1, Lc8/Vng;->pageName:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v3    # "index":I
    .end local v6    # "pageName":Ljava/lang/String;
    .end local v8    # "start":I
    :cond_2
    const-string/jumbo v9, "begin"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lc8/Vng;->beginTime:J

    .line 217
    const-string/jumbo v9, "end"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lc8/Vng;->endTime:J

    .line 218
    const-string/jumbo v9, "greyTime"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lc8/Vng;->grey:J

    .line 219
    const-string/jumbo v9, "condition"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/Vng;->condition:Ljava/lang/String;

    .line 220
    const-string/jumbo v9, "groupId"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lc8/Vng;->groupId:I

    .line 221
    const-string/jumbo v9, "groupName"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/Vng;->groupName:Ljava/lang/String;

    .line 222
    const-string/jumbo v9, "status"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/Vng;->status:Ljava/lang/String;

    .line 223
    const-string/jumbo v9, "groupSize"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lc8/Vng;->groupSize:I

    .line 224
    const-string/jumbo v9, "sampleRange"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    iput-object v9, v1, Lc8/Vng;->sampleRange:Lorg/json/JSONArray;

    .line 225
    const-string/jumbo v9, "calculateMode"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lc8/Vng;->calculateMode:Ljava/lang/String;

    .line 226
    const-string/jumbo v9, "antId"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lc8/Vng;->antId:I

    .line 227
    const-string/jumbo v9, "groupOrder"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lc8/Vng;->groupOrder:I

    .line 228
    const-string/jumbo v9, "inWhiteList"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v1, Lc8/Vng;->inWhiteList:Z

    .line 229
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v9, v1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    .line 230
    const-string/jumbo v9, "result"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 231
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 233
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 234
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v1, v9}, Lc8/Wng;->create(Lc8/Vng;Lorg/json/JSONObject;)Lc8/Wng;

    move-result-object v4

    .line 235
    .local v4, "item":Lc8/Wng;
    iget-object v9, v1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    iget-object v10, v4, Lc8/Wng;->indexKey:Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "item":Lc8/Wng;
    .end local v5    # "length":I
    .end local v7    # "pageNames":Ljava/lang/String;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public copy(Lc8/Vng;)V
    .locals 2
    .param p1, "item"    # Lc8/Vng;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p1, Lc8/Vng;->name:Ljava/lang/String;

    iput-object v0, p0, Lc8/Vng;->name:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lc8/Vng;->type:Ljava/lang/String;

    iput-object v0, p0, Lc8/Vng;->type:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lc8/Vng;->pageName:Ljava/util/List;

    iput-object v0, p0, Lc8/Vng;->pageName:Ljava/util/List;

    .line 249
    iget v0, p1, Lc8/Vng;->releaseId:I

    iput v0, p0, Lc8/Vng;->releaseId:I

    .line 250
    iget v0, p1, Lc8/Vng;->antId:I

    iput v0, p0, Lc8/Vng;->antId:I

    .line 251
    iget-wide v0, p1, Lc8/Vng;->beginTime:J

    iput-wide v0, p0, Lc8/Vng;->beginTime:J

    .line 252
    iget-wide v0, p1, Lc8/Vng;->endTime:J

    iput-wide v0, p0, Lc8/Vng;->endTime:J

    .line 253
    iget v0, p1, Lc8/Vng;->groupId:I

    iput v0, p0, Lc8/Vng;->groupId:I

    .line 254
    iget-object v0, p1, Lc8/Vng;->groupName:Ljava/lang/String;

    iput-object v0, p0, Lc8/Vng;->groupName:Ljava/lang/String;

    .line 255
    iget v0, p1, Lc8/Vng;->groupOrder:I

    iput v0, p0, Lc8/Vng;->groupOrder:I

    .line 256
    iget v0, p1, Lc8/Vng;->groupSize:I

    iput v0, p0, Lc8/Vng;->groupSize:I

    .line 257
    iget-object v0, p1, Lc8/Vng;->sampleRange:Lorg/json/JSONArray;

    iput-object v0, p0, Lc8/Vng;->sampleRange:Lorg/json/JSONArray;

    .line 258
    iget-boolean v0, p1, Lc8/Vng;->inWhiteList:Z

    iput-boolean v0, p0, Lc8/Vng;->inWhiteList:Z

    .line 259
    iget-object v0, p1, Lc8/Vng;->calculateMode:Ljava/lang/String;

    iput-object v0, p0, Lc8/Vng;->calculateMode:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    iput-object v0, p0, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    goto :goto_0
.end method

.method public getItemBy(Ljava/lang/String;Ljava/lang/String;)Lc8/Wng;
    .locals 2
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-static {p1, p2}, Lc8/Wng;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Wng;

    .line 132
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEffective()Z
    .locals 4

    .prologue
    .line 142
    sget-object v2, Lc8/Vng;->TIME_STAMP:Lc8/fog;

    if-nez v2, :cond_0

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    .local v0, "currentTime":J
    :goto_0
    iget-wide v2, p0, Lc8/Vng;->beginTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lc8/Vng;->endTime:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 145
    .end local v0    # "currentTime":J
    :cond_0
    sget-object v2, Lc8/Vng;->TIME_STAMP:Lc8/fog;

    invoke-interface {v2}, Lc8/fog;->getServerTimestamp()J

    move-result-wide v0

    .restart local v0    # "currentTime":J
    goto :goto_0

    .line 147
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isInSample(J)Z
    .locals 13
    .param p1, "hashcode"    # J

    .prologue
    const-wide/32 v10, 0xf4240

    const-wide/16 v8, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v6, p0, Lc8/Vng;->sampleRange:Lorg/json/JSONArray;

    if-nez v6, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v4

    .line 179
    :cond_1
    iget-object v6, p0, Lc8/Vng;->sampleRange:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v10

    div-long v2, v6, v8

    .line 180
    .local v2, "min":J
    iget-object v6, p0, Lc8/Vng;->sampleRange:Lorg/json/JSONArray;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v10

    div-long v0, v6, v8

    .line 181
    .local v0, "max":J
    cmp-long v6, p1, v2

    if-ltz v6, :cond_0

    cmp-long v6, p1, v0

    if-gez v6, :cond_0

    move v4, v5

    .line 182
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExperimentGroup{releaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Vng;->releaseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->pageName:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", beginTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/Vng;->beginTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/Vng;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Vng;->groupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Vng;->groupSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleRange=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->sampleRange:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", calculateMode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->calculateMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", antId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Vng;->antId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Vng;->groupOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inWhiteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Vng;->inWhiteList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
