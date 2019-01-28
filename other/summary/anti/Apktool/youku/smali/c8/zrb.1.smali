.class public Lc8/zrb;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final CUSTOM_DATE_FORMATS:[Ljava/text/DateFormat;

.field public static final DAY:J = 0x5265c00L

.field private static final TIMEZONE:Ljava/util/TimeZone;

.field public static final WEEK:J = 0x240c8400L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 30
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    sput-object v2, Lc8/zrb;->TIMEZONE:Ljava/util/TimeZone;

    .line 113
    const/16 v2, 0x16

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "EEE, dd MMM yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "EEE, dd MMM yy HH:mm:ss"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "EEE, MMM dd yy HH:mm:ss"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "EEE, dd MMM yy HH:mm z"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "EEE dd MMM yyyy HH:mm:ss"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "dd MMM yy HH:mm:ss z"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "dd MMM yy HH:mm z"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:sszzzz"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss z"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HHmmss.SSSz"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mmZ"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "dd MMM yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "dd MMM yyyy HH:mm z"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "yyyy-MM-dd"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "MMM dd, yyyy"

    aput-object v3, v1, v2

    .line 138
    .local v1, "possibleDateFormats":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/text/SimpleDateFormat;

    sput-object v2, Lc8/zrb;->CUSTOM_DATE_FORMATS:[Ljava/text/DateFormat;

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 141
    sget-object v2, Lc8/zrb;->CUSTOM_DATE_FORMATS:[Ljava/text/DateFormat;

    new-instance v3, Ljava/text/SimpleDateFormat;

    aget-object v4, v1, v0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v2, v0

    .line 142
    sget-object v2, Lc8/zrb;->CUSTOM_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v2, v2, v0

    sget-object v3, Lc8/zrb;->TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 34
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 35
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 38
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 13
    .param p0, "strdate"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xa

    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 106
    :goto_0
    return-object v5

    .line 54
    :cond_1
    const/4 v5, 0x0

    .line 55
    .local v5, "result":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_7

    invoke-static {p0}, Lc8/zrb;->isNumeric(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 58
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmmss"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 60
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/text/ParseException;
    sget-object v8, Lc8/Cqb;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_6

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "sign":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    invoke-virtual {p0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    .end local v7    # "sign":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "dateEnd":Ljava/lang/String;
    const-string/jumbo v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "+"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v12, :cond_6

    .line 86
    const-string/jumbo v8, "GMT"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x6

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 87
    move-object v4, p0

    .line 88
    .local v4, "oldDate":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "newEnd":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x6

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    .end local v0    # "dateEnd":Ljava/lang/String;
    .end local v3    # "newEnd":Ljava/lang/String;
    .end local v4    # "oldDate":Ljava/lang/String;
    :cond_6
    const-class v9, Lc8/zrb;

    monitor-enter v9

    .line 96
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_1
    sget-object v8, Lc8/zrb;->CUSTOM_DATE_FORMATS:[Ljava/text/DateFormat;

    array-length v8, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v2, v8, :cond_8

    .line 98
    :try_start_2
    sget-object v8, Lc8/zrb;->CUSTOM_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v8, v8, v2

    invoke-virtual {v8, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .end local v5    # "result":Ljava/util/Date;
    :try_start_3
    monitor-exit v9

    goto/16 :goto_0

    .line 105
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 63
    .end local v2    # "i":I
    .restart local v5    # "result":Ljava/util/Date;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x13

    if-ne v8, v9, :cond_2

    const-string/jumbo v8, " "

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 65
    :try_start_4
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 67
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v1

    .line 68
    .restart local v1    # "e":Ljava/text/ParseException;
    sget-object v8, Lc8/Cqb;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 100
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "i":I
    :catch_2
    move-exception v8

    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_2

    .line 102
    :catch_3
    move-exception v8

    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_2

    .line 105
    :cond_8
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
