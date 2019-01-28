.class public Lc8/wNf;
.super Ljava/lang/Object;
.source "ImageStrategyExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vNf;
    }
.end annotation


# static fields
.field private static sCdnRuleRegex:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "hs":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 129
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "stmp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 131
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 135
    .end local v2    # "stmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBaseUrlInfo(Ljava/lang/String;)Lc8/vNf;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 17
    new-instance v2, Lc8/vNf;

    invoke-direct {v2}, Lc8/vNf;-><init>()V

    .line 18
    .local v2, "ret":Lc8/vNf;
    const-string/jumbo v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    if-lez v1, :cond_1

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vNf;->suffix:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vNf;->base:Ljava/lang/String;

    .line 28
    :goto_0
    iget-object v3, v2, Lc8/vNf;->base:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 29
    .local v0, "dotIdx":I
    if-lez v0, :cond_0

    iget-object v3, v2, Lc8/vNf;->base:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_0

    .line 30
    iget-object v3, v2, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vNf;->ext:Ljava/lang/String;

    .line 32
    :cond_0
    return-object v2

    .line 21
    .end local v0    # "dotIdx":I
    :cond_1
    const-string/jumbo v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vNf;->suffix:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/vNf;->base:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_2
    const-string/jumbo v3, ""

    iput-object v3, v2, Lc8/vNf;->suffix:Ljava/lang/String;

    .line 26
    iput-object p0, v2, Lc8/vNf;->base:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseImageUrl(Ljava/lang/String;)Lc8/vNf;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/wNf;->parseImageUrl(Ljava/lang/String;Lc8/vNf;)Lc8/vNf;

    move-result-object v0

    return-object v0
.end method

.method static parseImageUrl(Ljava/lang/String;Lc8/vNf;)Lc8/vNf;
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Lc8/vNf;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lc8/vNf;

    .end local p1    # "info":Lc8/vNf;
    invoke-direct/range {p1 .. p1}, Lc8/vNf;-><init>()V

    .line 47
    .restart local p1    # "info":Lc8/vNf;
    :cond_0
    const/16 v11, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 48
    .local v2, "e":I
    if-gez v2, :cond_1

    .line 49
    const/16 p1, 0x0

    .line 107
    .end local p1    # "info":Lc8/vNf;
    :goto_0
    return-object p1

    .line 51
    .restart local p1    # "info":Lc8/vNf;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iput-object v11, v0, Lc8/vNf;->ext:Ljava/lang/String;

    .line 62
    sget-object v11, Lc8/wNf;->sCdnRuleRegex:Ljava/util/regex/Pattern;

    if-nez v11, :cond_2

    .line 63
    const-string/jumbo v11, "_(?:(?:(?:\\.webp)|(?:\\.apg))|((?:(?:(\\d+)x(\\d+)(xz)?(co0)?(c[xy]\\d+i\\d)?)|([Qq]\\d{2})|(s\\d{2,3})){1,3}(?:\\.jpg)?(?:_(?:(?:\\.webp)|(?:\\.apg)))?))(?:END_IMAGE_URL)?$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lc8/wNf;->sCdnRuleRegex:Ljava/util/regex/Pattern;

    .line 66
    :cond_2
    sget-object v11, Lc8/wNf;->sCdnRuleRegex:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 67
    .local v5, "matcher":Ljava/util/regex/Matcher;
    const/16 v11, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 68
    .local v9, "splash":I
    if-gez v9, :cond_3

    const/4 v9, 0x0

    .end local v9    # "splash":I
    :cond_3
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 69
    const/16 p1, 0x0

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    .line 73
    .local v3, "groupCount":I
    const/4 v11, 0x6

    if-ge v3, v11, :cond_5

    .line 74
    const/16 p1, 0x0

    goto :goto_0

    .line 79
    :cond_5
    const/4 v11, 0x2

    :try_start_0
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "widthStr":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "heightStr":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "cutType":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    iput-boolean v11, v0, Lc8/vNf;->existCo:Z

    .line 83
    const/4 v11, 0x6

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p1

    iput-boolean v11, v0, Lc8/vNf;->existCi:Z

    .line 84
    const/4 v11, 0x7

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "quality":Ljava/lang/String;
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "sharpen":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    iput v11, v0, Lc8/vNf;->width:I

    .line 89
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    iput v11, v0, Lc8/vNf;->height:I

    .line 92
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 93
    move-object/from16 v0, p1

    iput-object v1, v0, Lc8/vNf;->cj:Ljava/lang/String;

    .line 95
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 96
    move-object/from16 v0, p1

    iput-object v7, v0, Lc8/vNf;->quality:Ljava/lang/String;

    .line 98
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 99
    move-object/from16 v0, p1

    iput-object v8, v0, Lc8/vNf;->sharpen:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "cutType":Ljava/lang/String;
    .end local v4    # "heightStr":Ljava/lang/String;
    .end local v7    # "quality":Ljava/lang/String;
    .end local v8    # "sharpen":Ljava/lang/String;
    .end local v10    # "widthStr":Ljava/lang/String;
    :cond_a
    :goto_3
    const-string/jumbo v11, ""

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iput-object v11, v0, Lc8/vNf;->base:Ljava/lang/String;

    goto/16 :goto_0

    .line 82
    .restart local v1    # "cutType":Ljava/lang/String;
    .restart local v4    # "heightStr":Ljava/lang/String;
    .restart local v10    # "widthStr":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto :goto_1

    .line 83
    :cond_c
    const/4 v11, 0x0

    goto :goto_2

    .line 101
    .end local v1    # "cutType":Ljava/lang/String;
    .end local v4    # "heightStr":Ljava/lang/String;
    .end local v10    # "widthStr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 102
    .local v6, "ne":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 103
    const-string/jumbo v11, "STRATEGY.ALL"

    const-string/jumbo v12, "ImageStrategyExtra parseImageUrl convert number error:%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lc8/oHf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static signutf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 121
    :goto_0
    return-object v2

    .line 116
    :cond_0
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 117
    .local v0, "md":Ljava/security/MessageDigest;
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lc8/wNf;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "sign error !"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
