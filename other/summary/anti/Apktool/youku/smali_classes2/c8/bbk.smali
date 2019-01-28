.class public Lc8/bbk;
.super Ljava/lang/Object;
.source "ParseErrorCode.java"


# static fields
.field private static final ERROR_REASON_IDS:[I

.field private static final FAIL_REASON_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/youku/phone/R$string;->no_network:I

    aput v1, v0, v3

    sget v1, Lcom/youku/phone/R$string;->logout_error:I

    aput v1, v0, v4

    sget v1, Lcom/youku/phone/R$string;->request_too_much_error:I

    aput v1, v0, v5

    const/4 v1, 0x3

    sget v2, Lcom/youku/phone/R$string;->request_not_exist:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/youku/phone/R$string;->video_count_over_the_limit:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/youku/phone/R$string;->cannot_like_your_own_collection:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/youku/phone/R$string;->wrong_arguments:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/youku/phone/R$string;->text_include_sensitive_words:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/youku/phone/R$string;->text_too_long:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/youku/phone/R$string;->text_password_modified:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/youku/phone/R$string;->text_not_logged:I

    aput v2, v0, v1

    sput-object v0, Lc8/bbk;->ERROR_REASON_IDS:[I

    .line 27
    new-array v0, v5, [I

    sget v1, Lcom/youku/phone/R$string;->no_network:I

    aput v1, v0, v3

    sget v1, Lcom/youku/phone/R$string;->unknown_error:I

    aput v1, v0, v4

    sput-object v0, Lc8/bbk;->FAIL_REASON_IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseErrorCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x6

    .line 38
    if-nez p0, :cond_0

    .line 39
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_0
    :sswitch_0
    return-object v2

    .line 41
    :cond_0
    const-string/jumbo v2, ""

    .line 43
    .local v2, "errorReason":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    .line 82
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :sswitch_1
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    goto :goto_0

    .line 52
    :sswitch_2
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    goto :goto_0

    .line 55
    :sswitch_3
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    goto :goto_0

    .line 58
    :sswitch_4
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    goto :goto_0

    .line 61
    :sswitch_5
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    goto :goto_0

    .line 64
    :sswitch_6
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    goto :goto_0

    .line 67
    :sswitch_7
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    goto/16 :goto_0

    .line 70
    :sswitch_8
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    goto/16 :goto_0

    .line 73
    :sswitch_9
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    goto/16 :goto_0

    .line 76
    :sswitch_a
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    goto/16 :goto_0

    .line 79
    :sswitch_b
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    goto/16 :goto_0

    .line 85
    .end local v1    # "errorCode":I
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    sget-object v4, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v5, Lc8/bbk;->ERROR_REASON_IDS:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        -0x12e -> :sswitch_b
        -0x12d -> :sswitch_a
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_8
        0xcb -> :sswitch_9
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x12e -> :sswitch_6
        0x190 -> :sswitch_7
    .end sparse-switch
.end method

.method public static parseFailReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 94
    const-string/jumbo v1, "NO_NETWORK"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/bbk;->FAIL_REASON_IDS:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "fail":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 96
    .end local v0    # "fail":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "TIMEOUT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/bbk;->FAIL_REASON_IDS:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fail":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v0    # "fail":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "UNKNOWN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    sget-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/bbk;->FAIL_REASON_IDS:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fail":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0    # "fail":Ljava/lang/String;
    :cond_2
    sget-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/bbk;->FAIL_REASON_IDS:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fail":Ljava/lang/String;
    goto :goto_0
.end method
