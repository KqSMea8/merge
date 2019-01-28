.class public Lc8/hPg;
.super Ljava/lang/Object;
.source "ParseJson.java"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private jsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/hPg;->jsonString:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public parseBindListData(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/gPg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "accountBindItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/android/youkusettingservice/data/AccountBindItem;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lc8/hPg;->jsonString:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lc8/hPg;->jsonObject:Lorg/json/JSONObject;

    .line 98
    iget-object v8, p0, Lc8/hPg;->jsonObject:Lorg/json/JSONObject;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lc8/hPg;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v9, "thrid_info"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    iget-object v8, p0, Lc8/hPg;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v9, "thrid_info"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 100
    .local v5, "jsonResultsArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 102
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 103
    .local v4, "jsonResultObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 104
    const-string/jumbo v8, "appname"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "appname":Ljava/lang/String;
    const-string/jumbo v8, "token"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "token":Ljava/lang/String;
    const-string/jumbo v8, "tuid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "tuid":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 108
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/gPg;

    iget-object v8, v8, Lc8/gPg;->appname:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/gPg;

    iput-object v6, v8, Lc8/gPg;->token:Ljava/lang/String;

    .line 110
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/gPg;

    iput-object v7, v8, Lc8/gPg;->tuid:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/gPg;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lc8/gPg;->isBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "appname":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "tuid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    .end local v4    # "jsonResultObject":Lorg/json/JSONObject;
    .end local v5    # "jsonResultsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "Youku"

    const-string/jumbo v9, "ParseJson#parseBindListData()"

    invoke-static {v8, v9, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public parseUserInfo_V4()Lcom/youku/usercenter/vo/UserInfo;
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 31
    new-instance v7, Lcom/youku/usercenter/vo/UserInfo;

    invoke-direct {v7}, Lcom/youku/usercenter/vo/UserInfo;-><init>()V

    .line 33
    .local v7, "userInfo":Lcom/youku/usercenter/vo/UserInfo;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    iget-object v12, p0, Lc8/hPg;->jsonString:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "data"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 35
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "baseInfo"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    .local v1, "baseJson":Lorg/json/JSONObject;
    const-string/jumbo v11, "uid"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/youku/usercenter/vo/UserInfo;->uid:Ljava/lang/String;

    .line 37
    const-string/jumbo v11, "name"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/youku/usercenter/vo/UserInfo;->nickName:Ljava/lang/String;

    .line 38
    const-string/jumbo v11, "flag"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v7, Lcom/youku/usercenter/vo/UserInfo;->isIncomplete:Z

    .line 39
    const-string/jumbo v11, "verified"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v9, :cond_4

    :goto_0
    iput-boolean v9, v7, Lcom/youku/usercenter/vo/UserInfo;->verified:Z

    .line 41
    const-string/jumbo v9, "avatar"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "avaterJson":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lcom/youku/usercenter/vo/UserInfo;->buildUserAvatar()Lc8/hso;

    move-result-object v6

    .line 43
    .local v6, "userAvatar":Lc8/hso;
    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v9, "big"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lc8/hso;->bigAvatar:Ljava/lang/String;

    .line 45
    const-string/jumbo v9, "large"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lc8/hso;->largeAvatar:Ljava/lang/String;

    .line 46
    const-string/jumbo v9, "middle"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lc8/hso;->middleAvatar:Ljava/lang/String;

    .line 47
    const-string/jumbo v9, "small"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lc8/hso;->smallAvatar:Ljava/lang/String;

    .line 48
    iput-object v6, v7, Lcom/youku/usercenter/vo/UserInfo;->userAvatar:Lc8/hso;

    .line 53
    :cond_0
    const-string/jumbo v9, "rankInfo"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 54
    .local v4, "rankinfo":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 55
    const-string/jumbo v9, "grade"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/youku/usercenter/vo/UserInfo;->rank:I

    .line 56
    const-string/jumbo v9, "today_max_score"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/youku/usercenter/vo/UserInfo;->today_max_score:I

    .line 57
    const-string/jumbo v9, "today_score"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/youku/usercenter/vo/UserInfo;->today_score:I

    .line 58
    const-string/jumbo v9, "score"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/youku/usercenter/vo/UserInfo;->total_score:J

    .line 59
    const-string/jumbo v9, "upgrade_score"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/youku/usercenter/vo/UserInfo;->upgrade_score:I

    .line 63
    :cond_1
    const-string/jumbo v9, "vipInfo"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 64
    .local v8, "vipinfo":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    .line 65
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/youku/usercenter/vo/UserInfo;->vip:Z

    .line 66
    const-string/jumbo v9, "icon"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/youku/usercenter/vo/UserInfo;->rankIcon:Ljava/lang/String;

    .line 67
    const-string/jumbo v9, "remainDays"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/youku/usercenter/vo/UserInfo;->remain_days:I

    .line 69
    const-string/jumbo v9, "exptime"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/youku/usercenter/vo/UserInfo;->days_str:Ljava/lang/String;

    .line 70
    const-string/jumbo v9, "mmid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "serid":Ljava/lang/String;
    const-string/jumbo v9, "mmid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/youku/usercenter/vo/UserInfo;->mmid:Ljava/lang/String;

    .line 72
    iget-object v9, v7, Lcom/youku/usercenter/vo/UserInfo;->mmid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    const-string/jumbo v9, "mmid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/youku/usercenter/vo/UserInfo;->mmid:Ljava/lang/String;

    .line 75
    :cond_2
    const-string/jumbo v9, "vipGrade"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/youku/usercenter/vo/UserInfo;->vipGrade:I

    .line 78
    const-string/jumbo v9, "100008"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 79
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/youku/usercenter/vo/UserInfo;->isQingVip:Z

    .line 87
    .end local v5    # "serid":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/youku/usercenter/vo/UserInfo;->isAnonymous:Z

    .line 92
    .end local v0    # "avaterJson":Lorg/json/JSONObject;
    .end local v1    # "baseJson":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "rankinfo":Lorg/json/JSONObject;
    .end local v6    # "userAvatar":Lc8/hso;
    .end local v8    # "vipinfo":Lorg/json/JSONObject;
    :goto_2
    return-object v7

    .restart local v1    # "baseJson":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    move v9, v10

    .line 39
    goto/16 :goto_0

    .line 80
    .restart local v0    # "avaterJson":Lorg/json/JSONObject;
    .restart local v4    # "rankinfo":Lorg/json/JSONObject;
    .restart local v5    # "serid":Ljava/lang/String;
    .restart local v6    # "userAvatar":Lc8/hso;
    .restart local v8    # "vipinfo":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v9, "100013"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 81
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/youku/usercenter/vo/UserInfo;->isQingVip:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    .end local v0    # "avaterJson":Lorg/json/JSONObject;
    .end local v1    # "baseJson":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "rankinfo":Lorg/json/JSONObject;
    .end local v5    # "serid":Ljava/lang/String;
    .end local v6    # "userAvatar":Lc8/hso;
    .end local v8    # "vipinfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseUserInfo_V4="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2
.end method
