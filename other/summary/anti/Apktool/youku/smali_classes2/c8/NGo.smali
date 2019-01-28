.class public Lc8/NGo;
.super Ljava/lang/Object;
.source "VipTimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MMDD_HHmm_Format(J)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J

    .prologue
    .line 195
    const-string/jumbo v1, "MM\u6708dd\u65e5 HH:mm"

    .line 196
    .local v1, "formatString":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static MM_DD_HH_mm_Format(J)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J

    .prologue
    .line 184
    const-string/jumbo v1, "MM-dd HH:mm"

    .line 185
    .local v1, "formatString":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static MM_DD_format(J)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J

    .prologue
    .line 219
    const-string/jumbo v1, "MM-dd"

    .line 220
    .local v1, "formatString":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createDateofToadyByTimeOffset(J)Ljava/util/Date;
    .locals 4
    .param p0, "timeOffset"    # J

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 291
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 292
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 293
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 294
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 295
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 296
    return-object v1
.end method

.method public static diffHours(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "oldTime"    # Ljava/lang/String;
    .param p1, "newTime"    # Ljava/lang/String;

    .prologue
    .line 560
    const/4 v3, 0x0

    .line 561
    .local v3, "diffHours":I
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 563
    .local v2, "df":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 564
    .local v0, "d1":Ljava/util/Date;
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 565
    .local v1, "d2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 566
    .local v4, "diffTime":J
    const-wide/32 v8, 0x36ee80

    div-long v8, v4, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v8

    .line 570
    .end local v0    # "d1":Ljava/util/Date;
    .end local v1    # "d2":Ljava/util/Date;
    .end local v4    # "diffTime":J
    :goto_0
    return v3

    .line 567
    :catch_0
    move-exception v6

    .line 568
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static formatCloudDate(J)Ljava/lang/String;
    .locals 10
    .param p0, "lt"    # J

    .prologue
    .line 232
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "data":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "year":Ljava/lang/String;
    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "month":Ljava/lang/String;
    const/4 v7, 0x6

    const/16 v8, 0x8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "day":Ljava/lang/String;
    const/16 v7, 0x8

    const/16 v8, 0xa

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "h":Ljava/lang/String;
    const/16 v7, 0xa

    const/16 v8, 0xc

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "m":Ljava/lang/String;
    const/16 v7, 0xc

    const/16 v8, 0xe

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 242
    .local v5, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "day":Ljava/lang/String;
    .end local v2    # "h":Ljava/lang/String;
    .end local v3    # "m":Ljava/lang/String;
    .end local v4    # "month":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "year":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 240
    :catch_0
    move-exception v7

    const-string/jumbo v7, ""

    goto :goto_0
.end method

.method public static formatDateNoWeek(Landroid/content/Context;Ljava/util/Locale;J)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "time"    # J

    .prologue
    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 345
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 346
    .local v1, "currentCalendar":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 348
    .local v9, "timeCalendar":Ljava/util/Calendar;
    invoke-virtual {v9, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 349
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 351
    .local v4, "date":Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    .line 353
    .local v8, "is24":Z
    if-eqz v8, :cond_1

    .line 354
    const-string/jumbo v7, "yyyy-MM-dd HH:mm"

    .line 358
    .local v7, "format":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v7, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 359
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, "displayDatetime":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 363
    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_2

    .line 364
    const-string/jumbo v0, "AM"

    .line 368
    .local v0, "ampmValues":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 371
    .end local v0    # "ampmValues":Ljava/lang/String;
    .end local v6    # "displayDatetime":Ljava/lang/String;
    :cond_0
    return-object v6

    .line 356
    .end local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v7    # "format":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "yyyy-MM-dd hh:mm"

    .restart local v7    # "format":Ljava/lang/String;
    goto :goto_0

    .line 366
    .restart local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "displayDatetime":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "PM"

    .restart local v0    # "ampmValues":Ljava/lang/String;
    goto :goto_1
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 8
    .param p0, "second"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "hh":I
    const/4 v1, 0x0

    .line 538
    .local v1, "mm":I
    const/16 v2, 0xe10

    if-lt p0, v2, :cond_0

    .line 539
    div-int/lit16 v0, p0, 0xe10

    .line 540
    :cond_0
    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p0, v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_1

    .line 541
    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p0, v2

    div-int/lit8 v1, v2, 0x3c

    .line 542
    :cond_1
    if-nez v0, :cond_2

    .line 543
    const-string/jumbo v2, "%1$02d:%2$02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p0, v4

    mul-int/lit8 v5, v1, 0x3c

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 546
    :goto_0
    return-object v2

    :cond_2
    const-string/jumbo v2, "%1$02d:%2$02d:%3$02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p0, v4

    mul-int/lit8 v5, v1, 0x3c

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatDurationMillisecond(I)Ljava/lang/String;
    .locals 1
    .param p0, "millisecond"    # I

    .prologue
    .line 526
    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Lc8/NGo;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMsDate(J)Ljava/lang/String;
    .locals 6
    .param p0, "lt"    # J

    .prologue
    .line 30
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 32
    .local v2, "msgTime":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v3, v4, 0x76c

    .line 33
    .local v3, "year":I
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v1

    .line 34
    .local v1, "month":I
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v0

    .line 36
    .local v0, "day":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatMsDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "lt"    # J
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 42
    .local v2, "msgTime":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v3, v4, 0x76c

    .line 43
    .local v3, "year":I
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v1

    .line 44
    .local v1, "month":I
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v0

    .line 46
    .local v0, "day":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatMsShortTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "lt"    # J

    .prologue
    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 26
    .local v0, "msgTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatMsTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "lt"    # J

    .prologue
    .line 18
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 20
    .local v0, "msgTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatRecordPosition(J)Ljava/lang/String;
    .locals 12
    .param p0, "lt"    # J

    .prologue
    .line 483
    const-wide/32 v8, 0x5265c00

    rem-long v8, p0, v8

    const-wide/32 v10, 0x36ee80

    div-long v0, v8, v10

    .line 484
    .local v0, "hours":J
    const-wide/32 v8, 0x36ee80

    rem-long v8, p0, v8

    const-wide/32 v10, 0xea60

    div-long v2, v8, v10

    .line 485
    .local v2, "minutes":J
    const-wide/32 v8, 0xea60

    rem-long v8, p0, v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 487
    .local v4, "seconds":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-eqz v7, :cond_3

    .line 489
    const-wide/16 v8, 0xa

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    .line 490
    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_0
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_4

    .line 499
    const-wide/16 v8, 0xa

    cmp-long v7, v2, v8

    if-gez v7, :cond_1

    .line 500
    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_1
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 503
    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_5

    .line 509
    const-wide/16 v8, 0xa

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 510
    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_2
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 516
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 495
    :cond_3
    const-string/jumbo v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 505
    :cond_4
    const-string/jumbo v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 514
    :cond_5
    const-string/jumbo v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static formatRecordTime(I)Ljava/lang/String;
    .locals 7
    .param p0, "duration"    # I

    .prologue
    const/16 v4, 0x3c

    const/16 v6, 0xa

    .line 419
    if-ge p0, v4, :cond_1

    .line 420
    if-ge p0, v6, :cond_0

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "00:0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 438
    :goto_0
    return-object v4

    .line 423
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "00:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 425
    :cond_1
    if-lt p0, v4, :cond_4

    const/16 v4, 0x258

    if-ge p0, v4, :cond_4

    .line 426
    div-int/lit8 v0, p0, 0x3c

    .line 427
    .local v0, "minit":I
    rem-int/lit8 v2, p0, 0x3c

    .line 428
    .local v2, "sec":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "minitStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "secStr":Ljava/lang/String;
    if-ge v0, v6, :cond_2

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    :cond_2
    if-ge v2, v6, :cond_3

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 438
    .end local v0    # "minit":I
    .end local v1    # "minitStr":Ljava/lang/String;
    .end local v2    # "sec":I
    .end local v3    # "secStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "99:99"

    goto :goto_0
.end method

.method public static formatdDuration(I)Ljava/lang/String;
    .locals 7
    .param p0, "seconds"    # I

    .prologue
    const/16 v6, 0xa

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v0, "duration":Ljava/lang/StringBuilder;
    rem-int/lit8 v3, p0, 0x3c

    .line 451
    .local v3, "s":I
    rem-int/lit16 v4, p0, 0xe10

    div-int/lit8 v2, v4, 0x3c

    .line 452
    .local v2, "m":I
    div-int/lit16 v1, p0, 0xe10

    .line 453
    .local v1, "h":I
    if-lez v1, :cond_0

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    if-nez v2, :cond_1

    .line 458
    const-string/jumbo v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :goto_0
    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    if-nez v3, :cond_3

    .line 467
    const-string/jumbo v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 459
    :cond_1
    if-ge v2, v6, :cond_2

    .line 460
    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 468
    :cond_3
    if-ge v3, v6, :cond_4

    .line 469
    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 471
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 391
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 392
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "datetime":Ljava/lang/String;
    return-object v1
.end method

.method public static getCurrentDateTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 398
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 399
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "datetime":Ljava/lang/String;
    return-object v1
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 406
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 407
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "datetime":Ljava/lang/String;
    return-object v1
.end method

.method public static getCurrentTimeHour()I
    .locals 4

    .prologue
    .line 382
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 383
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 384
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 385
    .local v1, "hour":I
    return v1
.end method

.method public static getDateTimes(Ljava/util/Date;)J
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 259
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 262
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 263
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 7
    .param p0, "d1"    # Ljava/util/Calendar;
    .param p1, "d2"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 57
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    move-object v1, p0

    .line 59
    .local v1, "swap":Ljava/util/Calendar;
    move-object p0, p1

    .line 60
    move-object p1, v1

    .line 62
    .end local v1    # "swap":Ljava/util/Calendar;
    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 63
    .local v0, "days":I
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 64
    .local v2, "y2":I
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 65
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "d1":Ljava/util/Calendar;
    check-cast p0, Ljava/util/Calendar;

    .line 67
    .restart local p0    # "d1":Ljava/util/Calendar;
    :cond_1
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 68
    invoke-virtual {p0, v5, v5}, Ljava/util/Calendar;->add(II)V

    .line 70
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 72
    :cond_2
    return v0
.end method

.method public static getMiliSecondOfDay(J)J
    .locals 4
    .param p0, "times"    # J

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 268
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 270
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v2, p0, v2

    return-wide v2
.end method

.method public static getTimesOfToday()J
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 281
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 282
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 283
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 284
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 285
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public static hh_mm_Format(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J
    .param p2, "mResouces"    # Landroid/content/res/Resources;

    .prologue
    .line 170
    const-string/jumbo v2, "HH:mm"

    .line 171
    .local v2, "formatStr":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 172
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "result":Ljava/lang/String;
    return-object v3
.end method

.method public static isBeforeYesterdayDate(J)Z
    .locals 4
    .param p0, "times"    # J

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 108
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 109
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isInTheSameDay(JJ)Z
    .locals 6
    .param p0, "src"    # J
    .param p2, "dest"    # J

    .prologue
    const/4 v5, 0x6

    .line 94
    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 95
    .local v2, "last":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 96
    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 97
    .local v0, "current":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 98
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 99
    .local v3, "lastDay":I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 100
    .local v1, "currentDay":I
    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isInTheSameYear(JJ)Z
    .locals 6
    .param p0, "src"    # J
    .param p2, "dest"    # J

    .prologue
    const/4 v4, 0x1

    .line 77
    const-string/jumbo v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 78
    .local v2, "last":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 79
    const-string/jumbo v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 80
    .local v0, "current":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 82
    .local v3, "lastYear":I
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 83
    .local v1, "currentYear":I
    if-ne v3, v1, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isToday(J)Z
    .locals 14
    .param p0, "times"    # J

    .prologue
    const/4 v12, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "msgCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 116
    .local v4, "nowCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 119
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 120
    .local v3, "msgYear":I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 121
    .local v2, "msgMnoth":I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 122
    .local v1, "msgDay":I
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 123
    .local v7, "nowYear":I
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 124
    .local v6, "nowMnoth":I
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 126
    .local v5, "nowDay":I
    if-ne v3, v7, :cond_0

    if-ne v2, v6, :cond_0

    if-ne v1, v5, :cond_0

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isYesterdayByDate(J)Z
    .locals 14
    .param p0, "times"    # J

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x5

    const/4 v9, 0x1

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 131
    .local v1, "msgCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 132
    .local v5, "nowCalendar":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 135
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 136
    .local v4, "msgYear":I
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 137
    .local v3, "msgMnoth":I
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 138
    .local v2, "msgDay":I
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 139
    .local v8, "nowYear":I
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 140
    .local v7, "nowMnoth":I
    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 142
    .local v6, "nowDay":I
    if-ne v4, v8, :cond_1

    if-ne v3, v7, :cond_1

    .line 143
    sub-int v10, v6, v2

    if-ne v10, v9, :cond_2

    .line 161
    :cond_0
    :goto_0
    return v9

    .line 146
    :cond_1
    if-ne v4, v8, :cond_3

    if-eq v3, v7, :cond_3

    .line 147
    sub-int v10, v7, v3

    if-ne v10, v9, :cond_2

    .line 148
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 149
    .local v0, "maximum":I
    if-ne v6, v9, :cond_2

    if-eq v0, v2, :cond_0

    .line 161
    .end local v0    # "maximum":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 153
    :cond_3
    if-eq v4, v8, :cond_2

    .line 154
    sub-int v10, v8, v4

    if-ne v10, v9, :cond_2

    add-int/lit8 v10, v7, 0xc

    sub-int/2addr v10, v3

    if-ne v10, v9, :cond_2

    .line 155
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 156
    .restart local v0    # "maximum":I
    if-ne v6, v9, :cond_2

    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method public static parsehh_mmString(Ljava/lang/String;)J
    .locals 12
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x3c

    const-wide/16 v2, -0x1

    .line 306
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-wide v2

    .line 309
    :cond_1
    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "timeArr":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 314
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v10

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    mul-long/2addr v2, v10

    mul-long/2addr v2, v8

    add-long/2addr v2, v4

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseyyyy_MM_dd_date(Ljava/lang/String;)J
    .locals 6
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 326
    .local v2, "yyyy_MM_dd":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 327
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 330
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-wide v4

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 330
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public static socialCommentNotify_time_format(J)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J

    .prologue
    .line 477
    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    .line 478
    .local v1, "formatString":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static yyyy_MM_DD_Format(J)Ljava/lang/String;
    .locals 2
    .param p0, "times"    # J

    .prologue
    .line 246
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static yyyy_MM_DD_HH_mm_format(J)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J

    .prologue
    .line 207
    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    .line 208
    .local v1, "formatString":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static yyyy_MM_DD_HH_mm_ss_format(J)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J

    .prologue
    .line 201
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 202
    .local v1, "formatString":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static yyyy_MM_DD_format(J)Ljava/lang/String;
    .locals 4
    .param p0, "times"    # J

    .prologue
    .line 213
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 214
    .local v1, "formatString":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
