.class public Lc8/Hgb;
.super Ljava/lang/Object;
.source "LoginCookieUtils.java"


# static fields
.field private static final COMMA:C = ','

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final EQUAL:C = '='

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_ONLY:Ljava/lang/String; = "httponly"

.field private static final HTTP_ONLY_LENGTH:I

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final MAX_COOKIE_LENGTH:I = 0x1000

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'

.field private static final QUESTION_MARK:C = '?'

.field private static final QUOTATION:C = '\"'

.field private static final SECURE:Ljava/lang/String; = "secure"

.field private static final SECURE_LENGTH:I

.field private static final SEMICOLON:C = ';'

.field private static final TAG:Ljava/lang/String; = "login.LoginCookieUtils"

.field private static final WHITE_SPACE:C = ' '


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "secure"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lc8/Hgb;->SECURE_LENGTH:I

    .line 45
    const-string/jumbo v0, "httponly"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lc8/Hgb;->HTTP_ONLY_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expiresCookies(Lc8/Ggb;)V
    .locals 2
    .param p0, "cookie"    # Lc8/Ggb;

    .prologue
    .line 262
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Ggb;->expires:J

    .line 263
    return-void
.end method

.method public static getHttpDomin(Lc8/Ggb;)Ljava/lang/String;
    .locals 3
    .param p0, "cookie"    # Lc8/Ggb;

    .prologue
    .line 266
    iget-object v0, p0, Lc8/Ggb;->domain:Ljava/lang/String;

    .line 267
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKeyValues(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 310
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v6, "ret":Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object v6

    .line 315
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v8

    const-string/jumbo v9, ".taobao.com"

    invoke-interface {v8, v9}, Lc8/tgb;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "cookies":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 318
    const-string/jumbo v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "cooks":[Ljava/lang/String;
    array-length v8, v1

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v1, v7

    .line 320
    .local v5, "oneCookie":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "keyValue":[Ljava/lang/String;
    array-length v9, v4

    if-lt v9, v11, :cond_2

    .line 324
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 326
    array-length v9, v4

    if-ne v9, v11, :cond_3

    .line 327
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 329
    :cond_3
    const-string/jumbo v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 330
    .local v3, "index":I
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 336
    .end local v0    # "cookies":Ljava/lang/String;
    .end local v1    # "cooks":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "keyValue":[Ljava/lang/String;
    .end local v5    # "oneCookie":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object v6

    .line 279
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v8

    const-string/jumbo v9, ".taobao.com"

    invoke-interface {v8, v9}, Lc8/tgb;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "cookies":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 282
    const-string/jumbo v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "cooks":[Ljava/lang/String;
    array-length v8, v1

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v1, v7

    .line 284
    .local v5, "oneCookie":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "keyValue":[Ljava/lang/String;
    array-length v9, v4

    if-lt v9, v10, :cond_3

    .line 288
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 290
    const-string/jumbo v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 292
    .local v3, "index":I
    array-length v7, v4

    if-ne v7, v10, :cond_2

    .line 293
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 295
    :cond_2
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 283
    .end local v3    # "index":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 300
    .end local v0    # "cookies":Ljava/lang/String;
    .end local v1    # "cooks":[Ljava/lang/String;
    .end local v4    # "keyValue":[Ljava/lang/String;
    .end local v5    # "oneCookie":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseCookie(Ljava/lang/String;)Lc8/Ggb;
    .locals 20
    .param p0, "cookieString"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v8, 0x0

    .line 66
    .local v8, "index":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 71
    .local v10, "length":I
    :goto_0
    if-ltz v8, :cond_1a

    if-ge v8, v10, :cond_1a

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_0

    .line 77
    add-int/lit8 v8, v8, 0x1

    .line 78
    goto :goto_0

    .line 89
    :cond_0
    const/16 v14, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 90
    .local v12, "semicolonIndex":I
    const/16 v14, 0x3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 91
    .local v6, "equalIndex":I
    new-instance v4, Lc8/Ggb;

    invoke-direct {v4}, Lc8/Ggb;-><init>()V

    .line 99
    .local v4, "cookie":Lc8/Ggb;
    const/4 v14, -0x1

    if-eq v12, v14, :cond_1

    if-lt v12, v6, :cond_2

    :cond_1
    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    .line 101
    :cond_2
    const/4 v14, -0x1

    if-ne v12, v14, :cond_3

    .line 102
    move v12, v10

    .line 104
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lc8/Ggb;->name:Ljava/lang/String;

    .line 105
    const/4 v14, 0x0

    iput-object v14, v4, Lc8/Ggb;->value:Ljava/lang/String;

    .line 134
    :goto_1
    move v8, v12

    .line 137
    :cond_4
    :goto_2
    if-ltz v8, :cond_1b

    if-ge v8, v10, :cond_1b

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3b

    if-ne v14, v15, :cond_c

    .line 143
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 144
    goto :goto_2

    .line 107
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lc8/Ggb;->name:Ljava/lang/String;

    .line 110
    add-int/lit8 v14, v10, -0x1

    if-ge v6, v14, :cond_7

    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_7

    .line 111
    const/16 v14, 0x22

    add-int/lit8 v15, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 112
    const/4 v14, -0x1

    if-eq v8, v14, :cond_1a

    .line 119
    :cond_7
    const/16 v14, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 120
    const/4 v14, -0x1

    if-ne v12, v14, :cond_8

    .line 121
    move v12, v10

    .line 123
    :cond_8
    sub-int v14, v12, v6

    const/16 v15, 0x1000

    if-le v14, v15, :cond_9

    .line 125
    add-int/lit8 v14, v6, 0x1

    add-int/lit8 v15, v6, 0x1

    add-int/lit16 v15, v15, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lc8/Ggb;->value:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_9
    add-int/lit8 v14, v6, 0x1

    if-eq v14, v12, :cond_a

    if-ge v12, v6, :cond_b

    .line 128
    :cond_a
    const-string/jumbo v14, ""

    iput-object v14, v4, Lc8/Ggb;->value:Ljava/lang/String;

    goto :goto_1

    .line 130
    :cond_b
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lc8/Ggb;->value:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2c

    if-eq v14, v15, :cond_1b

    .line 155
    sub-int v14, v10, v8

    sget v15, Lc8/Hgb;->SECURE_LENGTH:I

    if-lt v14, v15, :cond_d

    sget v14, Lc8/Hgb;->SECURE_LENGTH:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "secure"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 156
    sget v14, Lc8/Hgb;->SECURE_LENGTH:I

    add-int/2addr v8, v14

    .line 157
    const/4 v14, 0x1

    iput-boolean v14, v4, Lc8/Ggb;->secure:Z

    .line 158
    if-eq v8, v10, :cond_1b

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-ne v14, v15, :cond_4

    .line 161
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 167
    :cond_d
    sub-int v14, v10, v8

    sget v15, Lc8/Hgb;->HTTP_ONLY_LENGTH:I

    if-lt v14, v15, :cond_e

    sget v14, Lc8/Hgb;->HTTP_ONLY_LENGTH:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "httponly"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 168
    sget v14, Lc8/Hgb;->HTTP_ONLY_LENGTH:I

    add-int/2addr v8, v14

    .line 169
    const/4 v14, 0x1

    iput-boolean v14, v4, Lc8/Ggb;->httpOnly:Z

    .line 170
    if-eq v8, v10, :cond_1b

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-ne v14, v15, :cond_4

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 177
    :cond_e
    const/16 v14, 0x3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 178
    if-lez v6, :cond_19

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v14, "expires"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 181
    const/16 v14, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 186
    .local v2, "comaIndex":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_f

    sub-int v14, v2, v6

    const/16 v15, 0xa

    if-gt v14, v15, :cond_f

    .line 187
    add-int/lit8 v8, v2, 0x1

    .line 190
    .end local v2    # "comaIndex":I
    :cond_f
    const/16 v14, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 191
    const/16 v14, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 192
    .local v3, "commaIndex":I
    const/4 v14, -0x1

    if-ne v12, v14, :cond_11

    const/4 v14, -0x1

    if-ne v3, v14, :cond_11

    .line 193
    move v8, v10

    .line 201
    :goto_3
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 204
    .local v13, "value":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_10

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_10

    .line 205
    const/16 v14, 0x22

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 206
    .local v5, "endQuote":I
    if-lez v5, :cond_10

    .line 207
    const/4 v14, 0x1

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 210
    .end local v5    # "endQuote":I
    :cond_10
    const-string/jumbo v14, "expires"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 212
    :try_start_0
    invoke-static {v13}, Lc8/Fgb;->parse(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Lc8/Ggb;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 213
    :catch_0
    move-exception v7

    .line 214
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v14, "login.LoginCookieUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "illegal format for expires: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 194
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "value":Ljava/lang/String;
    :cond_11
    const/4 v14, -0x1

    if-ne v12, v14, :cond_12

    .line 195
    move v8, v3

    goto :goto_3

    .line 196
    :cond_12
    const/4 v14, -0x1

    if-ne v3, v14, :cond_13

    .line 197
    move v8, v12

    goto :goto_3

    .line 199
    :cond_13
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_3

    .line 216
    .restart local v13    # "value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v14, "max-age"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 218
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    mul-long v16, v16, v18

    add-long v14, v14, v16

    iput-wide v14, v4, Lc8/Ggb;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 219
    :catch_1
    move-exception v7

    .line 220
    .local v7, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "login.LoginCookieUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "illegal format for max-age: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v7}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 222
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :cond_15
    const-string/jumbo v14, "path"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 224
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 225
    iput-object v13, v4, Lc8/Ggb;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 227
    :cond_16
    const-string/jumbo v14, "domain"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 228
    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 229
    .local v9, "lastPeriod":I
    if-nez v9, :cond_17

    .line 231
    const/4 v14, 0x0

    iput-object v14, v4, Lc8/Ggb;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 235
    :cond_17
    add-int/lit8 v14, v9, 0x1

    :try_start_2
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 240
    :catch_2
    move-exception v14

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 241
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_18

    .line 243
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x2e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 247
    :cond_18
    iput-object v13, v4, Lc8/Ggb;->domain:Ljava/lang/String;

    goto/16 :goto_2

    .line 251
    .end local v3    # "commaIndex":I
    .end local v9    # "lastPeriod":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_19
    move v8, v10

    goto/16 :goto_2

    .line 257
    .end local v4    # "cookie":Lc8/Ggb;
    .end local v6    # "equalIndex":I
    .end local v12    # "semicolonIndex":I
    :cond_1a
    const/4 v4, 0x0

    :cond_1b
    return-object v4
.end method
