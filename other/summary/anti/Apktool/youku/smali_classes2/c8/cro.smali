.class public Lc8/cro;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static DATE_FORMAT_EMPTY:Ljava/lang/String; = null

.field public static final DATE_FORMAT_PATTERN_TIME_ISO8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static DATE_FORMAT_SLASH:Ljava/lang/String; = null

.field public static final DATE_PATTERN_NOSPLIT:Ljava/lang/String; = "((((19|20)\\d{2})(0?[13578]|1[02])(0?[1-9]|[12]\\d|3[01]))|(((19|20)\\d{2})(0?[469]|11)(0?[1-9]|[12]\\d|30))|(((19|20)\\d{2})0?2(0?[1-9]|1\\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))0?2(0?[1-9]|[12]\\d)))"

.field public static final DATE_PATTERN_SINGLE_SPLIT:Ljava/lang/String; = "((((19|20)\\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\\d|3[01]))|(((19|20)\\d{2})-(0?[469]|11)-(0?[1-9]|[12]\\d|30))|(((19|20)\\d{2})-0?2-(0?[1-9]|1\\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-(0?[1-9]|[12]\\d)))"

.field public static DEFAULT_SIMPLE_DATE_PARSE:Ljava/lang/String; = null

.field public static DEFAULT_SIMPLE_DATE_PARSE_ZH:Ljava/lang/String; = null

.field public static DEFAULT_SIMPLE_DATE_PARSE_ZH_MONTH_DAY:Ljava/lang/String; = null

.field public static final SIMPLE_FORMAT_PATTERN_DATE:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final SIMPLE_FORMAT_PATTERN_MINUTE:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final SIMPLE_FORMAT_PATTERN_TIME:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final SIMPLE_FULL_FORMAT_DATE:Ljava/lang/String; = "yyyyMMddHHmmss"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "yyyyMMdd"

    sput-object v0, Lc8/cro;->DATE_FORMAT_EMPTY:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "yyyy/MM/dd"

    sput-object v0, Lc8/cro;->DATE_FORMAT_SLASH:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "yyyy-MM-dd"

    sput-object v0, Lc8/cro;->DEFAULT_SIMPLE_DATE_PARSE:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "yyyy\u5e74MM\u6708dd\u65e5"

    sput-object v0, Lc8/cro;->DEFAULT_SIMPLE_DATE_PARSE_ZH:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "MM\u6708dd\u65e5"

    sput-object v0, Lc8/cro;->DEFAULT_SIMPLE_DATE_PARSE_ZH_MONTH_DAY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    .line 138
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCureentWeekZH()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x7

    .line 279
    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u661f\u671f\u65e5"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "\u661f\u671f\u4e00"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "\u661f\u671f\u4e8c"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "\u661f\u671f\u4e09"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "\u661f\u671f\u56db"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "\u661f\u671f\u4e94"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\u661f\u671f\u516d"

    aput-object v4, v1, v3

    .line 280
    .local v1, "weekDays":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 281
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 282
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 283
    .local v2, "weekValue":I
    if-gez v2, :cond_0

    .line 284
    const/4 v2, 0x0

    .line 286
    :cond_0
    aget-object v3, v1, v2

    return-object v3
.end method

.method public static getCurrentDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "strDate":Ljava/lang/String;
    invoke-static {v1}, Lc8/wro;->trim(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lc8/cro;->getCurrentTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "sFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFieldValue(Ljava/util/Date;I)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .prologue
    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    .local v0, "cl":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 124
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getDateTimeByMillisecond(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "millisecondStr"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 227
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getDateWithoutTimes(J)Ljava/util/Date;
    .locals 4
    .param p0, "timestamp"    # J

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 319
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 320
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 321
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 322
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 323
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 324
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDayChangePoint(J)Ljava/util/Date;
    .locals 8
    .param p0, "distance"    # J

    .prologue
    .line 45
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, "sFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "dayChange":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .restart local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " 00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 49
    .local v0, "date":Ljava/util/Date;
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-nez v4, :cond_0

    .line 58
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dayChange":Ljava/lang/String;
    .end local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v0

    .line 52
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "dayChange":Ljava/lang/String;
    .restart local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, p0

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 54
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dayChange":Ljava/lang/String;
    .end local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDifftimeDesc(JJLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "curr_time"    # J
    .param p2, "comparer_time"    # J
    .param p4, "defaultFormatter"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x18

    const-wide/16 v4, 0x3c

    .line 151
    sub-long v0, p0, p2

    .line 152
    .local v0, "d_value":J
    const-wide/32 v2, -0x1d4c0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 153
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, p4}, Lc8/cro;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_0
    return-object v2

    .line 155
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 156
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 157
    const-string/jumbo v2, "\u521a\u521a"

    goto :goto_0

    .line 159
    :cond_1
    div-long/2addr v0, v4

    .line 160
    const-wide/16 v2, 0x1e

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5206\u949f\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_2
    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 163
    const-string/jumbo v2, "\u534a\u5c0f\u65f6\u524d"

    goto :goto_0

    .line 165
    :cond_3
    div-long/2addr v0, v4

    .line 166
    cmp-long v2, v0, v6

    if-gez v2, :cond_4

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 169
    :cond_4
    div-long/2addr v0, v6

    .line 170
    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5929\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 180
    :cond_5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, p4}, Lc8/cro;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDifftimeDesc(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "curr_date"    # Ljava/util/Date;
    .param p1, "comparer_date"    # Ljava/util/Date;

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1, v2, v3, v4}, Lc8/cro;->getDifftimeDesc(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDifftimeDesc(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "curr_date"    # Ljava/util/Date;
    .param p1, "comparer_date"    # Ljava/util/Date;
    .param p2, "formatter"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lc8/cro;->getDifftimeDesc(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatTotalTimes(J)Ljava/lang/String;
    .locals 14
    .param p0, "durations"    # J

    .prologue
    const-wide/16 v12, 0xe10

    const-wide/16 v10, 0xa

    const-wide/16 v8, 0x3c

    .line 295
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 296
    .local v4, "timeStr":Ljava/lang/StringBuffer;
    cmp-long v5, p0, v12

    if-lez v5, :cond_2

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, p0, v12

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    rem-long v6, p0, v12

    div-long v0, v6, v8

    .line 299
    .local v0, "minuts":J
    cmp-long v5, v0, v10

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    rem-long v6, p0, v12

    rem-long v2, v6, v8

    .line 301
    .local v2, "senconds":J
    cmp-long v5, v2, v10

    if-gez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 311
    .end local v0    # "minuts":J
    .end local v2    # "senconds":J
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 299
    .restart local v0    # "minuts":J
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 301
    .restart local v2    # "senconds":J
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    .line 302
    .end local v0    # "minuts":J
    .end local v2    # "senconds":J
    :cond_2
    cmp-long v5, p0, v8

    if-lez v5, :cond_4

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, p0, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    rem-long v2, p0, v8

    .line 305
    .restart local v2    # "senconds":J
    cmp-long v5, v2, v10

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_3

    .line 306
    .end local v2    # "senconds":J
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_6

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "00:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    cmp-long v5, p0, v10

    if-gez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_4

    .line 309
    :cond_6
    const-string/jumbo v5, "00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method public static getSpecifiedDay(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "specifiedDay"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/lang/String;
    .param p2, "dayDifference"    # I

    .prologue
    const/4 v6, 0x5

    .line 239
    invoke-static {p1}, Lc8/wro;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    sget-object p1, Lc8/cro;->DEFAULT_SIMPLE_DATE_PARSE:Ljava/lang/String;

    .line 243
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 244
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 246
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 251
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 252
    .local v2, "day":I
    add-int v5, v2, p2

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 253
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "dayBefore":Ljava/lang/String;
    return-object v3

    .line 247
    .end local v2    # "day":I
    .end local v3    # "dayBefore":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 248
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWeekByYMD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "regix"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0xa

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "arr":[Ljava/lang/String;
    aget-object v9, v1, v11

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 265
    .local v6, "uYear":I
    aget-object v9, v1, v12

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 266
    .local v5, "uMonth":I
    aget-object v9, v1, v13

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 267
    .local v4, "uDay":I
    rsub-int/lit8 v9, v5, 0xe

    div-int/lit8 v0, v9, 0xc

    .line 268
    .local v0, "a":I
    sub-int v8, v6, v0

    .line 269
    .local v8, "y":I
    mul-int/lit8 v9, v0, 0xc

    add-int/2addr v9, v5

    add-int/lit8 v3, v9, -0x2

    .line 270
    .local v3, "m":I
    add-int v9, v4, v8

    div-int/lit8 v10, v8, 0x4

    add-int/2addr v9, v10

    div-int/lit8 v10, v8, 0x64

    sub-int/2addr v9, v10

    div-int/lit16 v10, v8, 0x190

    add-int/2addr v9, v10

    mul-int/lit8 v10, v3, 0x1f

    div-int/lit8 v10, v10, 0xc

    add-int/2addr v9, v10

    rem-int/lit8 v2, v9, 0x7

    .line 271
    .local v2, "d":I
    const/4 v9, 0x7

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v9, "\u661f\u671f\u65e5"

    aput-object v9, v7, v11

    const-string/jumbo v9, "\u661f\u671f\u4e00"

    aput-object v9, v7, v12

    const-string/jumbo v9, "\u661f\u671f\u4e8c"

    aput-object v9, v7, v13

    const/4 v9, 0x3

    const-string/jumbo v10, "\u661f\u671f\u4e09"

    aput-object v10, v7, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "\u661f\u671f\u56db"

    aput-object v10, v7, v9

    const/4 v9, 0x5

    const-string/jumbo v10, "\u661f\u671f\u4e94"

    aput-object v10, v7, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "\u661f\u671f\u516d"

    aput-object v10, v7, v9

    .line 272
    .local v7, "week":[Ljava/lang/String;
    aget-object v9, v7, v2

    return-object v9
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v2}, Lc8/cro;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 97
    .local v0, "ret":Ljava/util/Date;
    if-nez v0, :cond_2

    .line 98
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v2}, Lc8/cro;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 100
    :cond_2
    if-eqz v0, :cond_0

    .line 101
    invoke-static {v0, v4}, Lc8/cro;->getDateFieldValue(Ljava/util/Date;I)I

    move-result v2

    const/16 v3, 0x6d9

    if-lt v2, v3, :cond_3

    .line 102
    invoke-static {v0, v4}, Lc8/cro;->getDateFieldValue(Ljava/util/Date;I)I

    move-result v2

    const/16 v3, 0xbb8

    if-le v2, v3, :cond_0

    :cond_3
    move-object v0, v1

    .line 103
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 118
    :goto_0
    return-object v1

    .line 114
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 117
    .local v0, "simpleDateParser":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseDynamicTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "time_str"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .local v0, "last_date":Ljava/util/Date;
    :goto_0
    return-object v0

    .line 85
    .end local v0    # "last_date":Ljava/util/Date;
    :catch_0
    move-exception v2

    invoke-static {p0}, Lc8/cro;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 88
    .restart local v0    # "last_date":Ljava/util/Date;
    goto :goto_0

    .line 86
    .end local v0    # "last_date":Ljava/util/Date;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "ne":Ljava/lang/NullPointerException;
    throw v1
.end method
