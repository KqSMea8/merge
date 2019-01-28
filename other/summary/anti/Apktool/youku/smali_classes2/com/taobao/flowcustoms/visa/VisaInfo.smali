.class public Lcom/taobao/flowcustoms/visa/VisaInfo;
.super Ljava/lang/Object;
.source "VisaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final UPDATE_STEP_TIEM:J = 0x36ee80L

.field private static final serialVersionUID:J = 0x7f48947843d5d45aL


# instance fields
.field public appIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public code:Ljava/lang/String;

.field public endDate:J

.field public isVip:Z

.field public updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->isVip:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->endDate:J

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->updateTime:J

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->isVip:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->endDate:J

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->updateTime:J

    .line 37
    iput-object p1, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static getVisaInfo(Ljava/lang/String;)Lcom/taobao/flowcustoms/visa/VisaInfo;
    .locals 1
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lc8/ipf;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/flowcustoms/visa/VisaInfo;->getVisaInfo(Lorg/json/JSONObject;)Lcom/taobao/flowcustoms/visa/VisaInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVisaInfo(Lorg/json/JSONObject;)Lcom/taobao/flowcustoms/visa/VisaInfo;
    .locals 1
    .param p0, "jsonString"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/taobao/flowcustoms/visa/VisaInfo;->parser(Lorg/json/JSONObject;)Lcom/taobao/flowcustoms/visa/VisaInfo;

    move-result-object v0

    return-object v0
.end method

.method private static parser(Lorg/json/JSONObject;)Lcom/taobao/flowcustoms/visa/VisaInfo;
    .locals 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 99
    if-nez p0, :cond_1

    .line 123
    :cond_0
    return-object v5

    .line 103
    :cond_1
    const-string/jumbo v6, "code"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v6, "appIds"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 105
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const-string/jumbo v6, "isVip"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 107
    .local v2, "isVip":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    new-instance v5, Lcom/taobao/flowcustoms/visa/VisaInfo;

    invoke-direct {v5}, Lcom/taobao/flowcustoms/visa/VisaInfo;-><init>()V

    .line 113
    .local v5, "visaInfo":Lcom/taobao/flowcustoms/visa/VisaInfo;
    iput-object v0, v5, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    .line 114
    iput-boolean v2, v5, Lcom/taobao/flowcustoms/visa/VisaInfo;->isVip:Z

    .line 115
    const-string/jumbo v6, "endDate"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/taobao/flowcustoms/visa/VisaInfo;->endDate:J

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/taobao/flowcustoms/visa/VisaInfo;->updateTime:J

    .line 118
    if-nez v3, :cond_2

    const/4 v4, 0x0

    .line 119
    .local v4, "length":I
    :goto_0
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 120
    iget-object v6, v5, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 118
    .end local v1    # "i":I
    .end local v4    # "length":I
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public isSupportApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v2, Lc8/wpf;->appInfoList:Lc8/tpf;

    .line 75
    .local v2, "partnerAppInfoList":Lc8/tpf;
    const-string/jumbo v3, "AlibcVisa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "visa check appIds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 78
    iget-object v3, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/tpf;->getPartnerAppInfo(Ljava/lang/String;)Lc8/spf;

    move-result-object v1

    .line 79
    .local v1, "partnerAppInfo":Lc8/spf;
    const-string/jumbo v4, "AlibcVisa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "visa check appId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " partnerAppInfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v1, :cond_0

    iget-object v3, v1, Lc8/spf;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const/4 v3, 0x1

    .line 85
    .end local v1    # "partnerAppInfo":Lc8/spf;
    :goto_1
    return v3

    .line 77
    .restart local v1    # "partnerAppInfo":Lc8/spf;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 85
    .end local v1    # "partnerAppInfo":Lc8/spf;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "code"

    iget-object v2, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string/jumbo v1, "isVip"

    iget-boolean v2, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->isVip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string/jumbo v1, "appIds"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->appIds:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string/jumbo v1, "endDate"

    iget-wide v2, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->endDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v1, "updateTime"

    iget-wide v2, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->updateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/ipf;->putJsonObj(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visaIsExpire()Z
    .locals 4

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->endDate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visaIsUpdate()Z
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->updateTime:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
