.class public abstract Lc8/tIb;
.super Ljava/lang/Object;
.source "AlibcBasePromotionSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qIb;,
        Lc8/rIb;,
        Lc8/sIb;
    }
.end annotation


# static fields
.field private static final REPORT_ERROR_CODE_NO_PROMOTION_INFO:Ljava/lang/String; = "SYSTEM_FAIL"

.field private static final REPORT_ERROR_CODE_PARAM_ERROR:Ljava/lang/String; = "PARAM_FAIL"

.field private static final REPORT_ERROR_NO_PROMOTION_INFO:Ljava/lang/String; = "not find promotion info"

.field private static final REPORT_ERROR_PARAM_ERROR:Ljava/lang/String; = "param is error"

.field private static final TAG:Ljava/lang/String; = "AlibcPromotionSDK"


# instance fields
.field protected PROMOTION_CONTENT_PROVIDER_URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "content://com.alibaba.baichuan.taobao.ContentProvider/promotion?appKey=%s&marketingId=%s"

    iput-object v0, p0, Lc8/tIb;->PROMOTION_CONTENT_PROVIDER_URL:Ljava/lang/String;

    .line 233
    return-void
.end method

.method private findMarketingInfo(Landroid/app/Application;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "promotionCPUrl"    # Landroid/net/Uri;
    .param p3, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 147
    const-string/jumbo v0, "AlibcPromotionSDK"

    const-string/jumbo v1, "cursor is null"

    invoke-static {v0, v1}, Lc8/uIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v8, ""

    .line 170
    :goto_0
    return-object v8

    .line 152
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    const-string/jumbo v0, "appkey"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "targetAppkey":Ljava/lang/String;
    const-string/jumbo v0, "marketing_list"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "marketingListStr":Ljava/lang/String;
    const-string/jumbo v0, "AlibcPromotionSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "appkey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " marketingListStr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/uIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 162
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 164
    .end local v8    # "marketingListStr":Ljava/lang/String;
    .end local v9    # "targetAppkey":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 165
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 170
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v8, ""

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 190
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 186
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    move-object v2, v1

    .line 190
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 187
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public delPromotionToken(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "marketingId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 77
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string/jumbo v2, "AlibcPromotion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delPromotionToken appKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " marketingId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/uIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lc8/tIb;->PROMOTION_CONTENT_PROVIDER_URL:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    .local v0, "promotionCPUrl":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTokenInfo(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lc8/sIb;
    .locals 9
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "marketingId"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 48
    .local v3, "promotionTokenInfo":Lc8/sIb;
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v4, v3

    .line 65
    .end local v3    # "promotionTokenInfo":Lc8/sIb;
    .local v4, "promotionTokenInfo":Lc8/sIb;
    :goto_0
    return-object v4

    .line 52
    .end local v4    # "promotionTokenInfo":Lc8/sIb;
    .restart local v3    # "promotionTokenInfo":Lc8/sIb;
    :cond_1
    const-string/jumbo v6, "AlibcPromotion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getTokenInfo appKey = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " marketingId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/uIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v6, p0, Lc8/tIb;->PROMOTION_CONTENT_PROVIDER_URL:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 57
    .local v2, "promotionCPUrl":Landroid/net/Uri;
    invoke-direct {p0, p1, v2, p2}, Lc8/tIb;->findMarketingInfo(Landroid/app/Application;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "marketingList":Ljava/lang/String;
    invoke-direct {p0, v1}, Lc8/tIb;->optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    .local v0, "marketingJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lc8/sIb;->parser(Lorg/json/JSONObject;)Lc8/sIb;

    move-result-object v3

    .line 63
    :cond_2
    const-string/jumbo v7, "AlibcPromotion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getTokenInfo promotionTokenInfo = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_3

    const-string/jumbo v6, "null"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lc8/uIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 65
    .end local v3    # "promotionTokenInfo":Lc8/sIb;
    .restart local v4    # "promotionTokenInfo":Lc8/sIb;
    goto :goto_0

    .line 63
    .end local v4    # "promotionTokenInfo":Lc8/sIb;
    .restart local v3    # "promotionTokenInfo":Lc8/sIb;
    :cond_3
    invoke-virtual {v3}, Lc8/sIb;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public reportTask(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lc8/rIb;)V
    .locals 8
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "marketingId"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/rIb;

    .prologue
    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v0, "PARAM_FAIL"

    const-string/jumbo v1, "param is error"

    invoke-interface {p4, v0, v1}, Lc8/rIb;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    const-string/jumbo v0, "TaskReport"

    invoke-virtual {p0, p1, v0, p3}, Lc8/tIb;->sendPromotionUT(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lc8/tIb;->getTokenInfo(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lc8/sIb;

    move-result-object v6

    .line 106
    .local v6, "promotionTokenInfo":Lc8/sIb;
    if-eqz v6, :cond_3

    .line 107
    iget-object v7, v6, Lc8/sIb;->token:Ljava/lang/String;

    new-instance v0, Lc8/pIb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/pIb;-><init>(Lc8/tIb;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lc8/rIb;)V

    invoke-virtual {p0, p2, p3, v7, v0}, Lc8/tIb;->sendTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/qIb;)V

    goto :goto_0

    .line 121
    :cond_3
    if-eqz p4, :cond_1

    const-string/jumbo v0, "SYSTEM_FAIL"

    const-string/jumbo v1, "not find promotion info"

    invoke-interface {p4, v0, v1}, Lc8/rIb;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPromotionUT(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "marketingId"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method public abstract sendTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/qIb;)V
.end method
