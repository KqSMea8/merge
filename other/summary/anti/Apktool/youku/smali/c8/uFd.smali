.class public final Lc8/uFd;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static a:Ljava/lang/String;

.field private static b:I

.field private static c:[Ljava/lang/String;

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/text/SimpleDateFormat;

.field private static g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    sput v2, Lc8/uFd;->b:I

    sput-object v3, Lc8/uFd;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lc8/uFd;->d:Ljava/util/Hashtable;

    sput-object v3, Lc8/uFd;->e:Landroid/util/SparseArray;

    sput-object v3, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lc8/uFd;->g:[Ljava/lang/String;

    sput-object v3, Lc8/uFd;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(D)D
    .locals 4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(F)F
    .locals 4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    float-to-double v0, p0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lc8/uFd;->a([D)F

    move-result v0

    return v0
.end method

.method public static a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lc8/uFd;->a([D)F

    move-result v0

    return v0
.end method

.method public static a([D)F
    .locals 10

    const/4 v2, 0x1

    const/4 v9, 0x0

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-array v8, v2, [F

    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getServ"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lc8/eDd;

    const-class v1, Lc8/SEd;

    invoke-static {v1}, Lc8/eDd;->a(Ljava/lang/Class;)Lc8/dDd;

    move-result-object v1

    invoke-static {}, Lc8/uFd;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lc8/eDd;-><init>(Landroid/content/Context;Lc8/dDd;Ljava/lang/String;)V

    new-instance v1, Lc8/PEd;

    invoke-direct {v1}, Lc8/PEd;-><init>()V

    invoke-virtual {v1, p1}, Lc8/PEd;->a(I)V

    const-string/jumbo v2, "_id=1"

    invoke-virtual {v0, v1, v2}, Lc8/eDd;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "getDBConfigVersion"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(JJ)Z
    .locals 4

    const-string/jumbo v1, "yyyyMMddHH"

    const/4 v0, 0x0

    sget-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "isSameDay part1"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "isSameHour"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lc8/uFd;->c()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    const-string/jumbo v1, "android.provider.Settings$System"

    invoke-static {p0, v1}, Lc8/uFd;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "android.provider.Settings$Global"

    invoke-static {p0, v1}, Lc8/uFd;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v3, "2.0.201501131131"

    const-string/jumbo v4, "."

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT count(*) as c FROM sqlite_master WHERE type = \'table\' AND name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v3, "satellites"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-gtz v2, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lc8/uFd;->b(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lc8/uFd;->b(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ",202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,901,"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    const-string/jumbo v5, ",nb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v2, v0

    const-string/jumbo v5, ",access"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    aget-object v3, v2, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_7

    aget-object v6, v5, v2

    const-string/jumbo v7, ",nb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    aget-object v6, v5, v2

    const-string/jumbo v7, ",access"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v3

    shl-int/lit8 v0, v0, 0x1

    int-to-double v4, v0

    int-to-double v2, v2

    const-wide v6, 0x3fe3c6a7ef9db22dL    # 0.618

    mul-double/2addr v2, v6

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(I[B)[B
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1
.end method

.method public static a(J)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x3

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a([B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lc8/bGd;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "gz"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v3, v2

    const-string/jumbo v1, "0"

    aput-object v1, v3, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v2

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    aget-char v6, v5, v1

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-gt v1, v5, :cond_8

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-nez v0, :cond_5

    const-string/jumbo v0, "0"

    aput-object v0, v3, v2

    :cond_5
    aget-object v0, v3, v2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v3, v4

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sput-object v3, Lc8/uFd;->c:[Ljava/lang/String;

    move-object v0, v3

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v5, "getMccMnc"

    invoke-static {v0, v1, v5}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_6
    aget-object v0, v3, v2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget-object v0, v3, v4

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lc8/uFd;->c:[Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lc8/uFd;->c:[Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move v1, v4

    goto/16 :goto_0
.end method

.method public static b(D)D
    .locals 4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u5176\u4ed6\u9519\u8bef"

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "success"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "KEY\u9519\u8bef"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u5176\u4ed6\u9519\u8bef"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "\u7f51\u7edc\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8bbe\u5907\u662f\u5426\u63d2\u5165sim\u5361\uff0c\u662f\u5426\u5f00\u542f\u79fb\u52a8\u7f51\u7edc\u6216\u5f00\u542f\u4e86wifi\u6a21\u5757"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "GPS \u5b9a\u4f4d\u5931\u8d25\uff0c\u7531\u4e8e\u8bbe\u5907\u5f53\u524d GPS \u72b6\u6001\u5dee,\u5efa\u8bae\u6301\u8bbe\u5907\u5230\u76f8\u5bf9\u5f00\u9614\u7684\u9732\u5929\u573a\u6240\u518d\u6b21\u5c1d\u8bd5"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "\u5f53\u524d\u8fd4\u56de\u4f4d\u7f6e\u4e3a\u6a21\u62df\u8f6f\u4ef6\u8fd4\u56de\uff0c\u8bf7\u5173\u95ed\u6a21\u62df\u8f6f\u4ef6\uff0c\u6216\u8005\u5728option\u4e2d\u8bbe\u7f6e\u5141\u8bb8\u6a21\u62df"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lc8/cFd;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lc8/cFd;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p0}, Lc8/IFd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_1
    :try_start_1
    sget-object v1, Lc8/cFd;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-object v1, Lc8/cFd;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {p0}, Lc8/IFd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v0, Lc8/cFd;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lc8/cFd;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/cFd;->f:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getAppName part"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "getAppName"

    invoke-static {v1, v3, v4}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string/jumbo v3, "GPRS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string/jumbo v3, "EDGE"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/4 v2, 0x3

    const-string/jumbo v3, "UMTS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string/jumbo v3, "CDMA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/4 v2, 0x5

    const-string/jumbo v3, "EVDO_0"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/4 v2, 0x6

    const-string/jumbo v3, "EVDO_A"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/4 v2, 0x7

    const-string/jumbo v3, "1xRTT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0x8

    const-string/jumbo v3, "HSDPA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0x9

    const-string/jumbo v3, "HSUPA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0xa

    const-string/jumbo v3, "HSPA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0xb

    const-string/jumbo v3, "IDEN"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0xc

    const-string/jumbo v3, "EVDO_B"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0xd

    const-string/jumbo v3, "LTE"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0xe

    const-string/jumbo v3, "EHRPD"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const/16 v2, 0xf

    const-string/jumbo v3, "HSPAP"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :cond_1
    sget-object v1, Lc8/uFd;->e:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lc8/bGd;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(JJ)Z
    .locals 4

    const-string/jumbo v1, "yyyyMMdd"

    const/4 v0, 0x0

    sget-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "isSameDay part1"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lc8/uFd;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "isSameDay"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Lcom/amap/api/location/AMapLocation;)Z
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    cmpl-double v6, v2, v8

    if-nez v6, :cond_0

    cmpl-double v6, v4, v8

    if-eqz v6, :cond_1

    :cond_0
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_1

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_1

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, " :"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(I[B)[B
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    shl-int/lit8 v1, v0, 0x3

    shr-int v1, p0, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static c(D)D
    .locals 4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static c()I
    .locals 3

    sget v0, Lc8/uFd;->b:I

    if-lez v0, :cond_0

    sget v0, Lc8/uFd;->b:I

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v2, "android.os.Build$VERSION"

    :try_start_0
    const-string/jumbo v0, "SDK_INT"

    invoke-static {v2, v0}, Lc8/fFd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v0, "SDK"

    invoke-static {v2, v0}, Lc8/fFd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lc8/TFd;->n(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getNetWorkInfo"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lc8/uFd;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(JJ)Z
    .locals 6

    const/16 v5, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0xc

    invoke-static {p0, p1, p2, p3}, Lc8/uFd;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v3, v4, :cond_2

    if-le v2, v4, :cond_3

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    if-le v2, v4, :cond_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v0, "AIRPLANE_MODE_ON"

    invoke-static {p1, v0}, Lc8/fFd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v0, v4, v1

    new-array v0, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, v0, v2

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    const-string/jumbo v3, "getInt"

    invoke-static {p1, v3, v4, v0}, Lc8/fFd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static c([B)[B
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    aput-byte v2, v1, v2

    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-gt v0, v2, :cond_0

    array-length v2, p0

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "base642Str"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Lc8/IFd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "isApplicationBroughtToBackground"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static d([B)[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/16 v1, 0x1a

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    add-int/lit8 v1, v1, -0xa

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Lc8/eDd;

    const-class v2, Lc8/SEd;

    invoke-static {v2}, Lc8/eDd;->a(Ljava/lang/Class;)Lc8/dDd;

    move-result-object v2

    invoke-static {}, Lc8/uFd;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lc8/eDd;-><init>(Landroid/content/Context;Lc8/dDd;Ljava/lang/String;)V

    const-string/jumbo v2, "_id=1"

    const-class v3, Lc8/PEd;

    invoke-virtual {v0, v2, v3}, Lc8/eDd;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PEd;

    invoke-virtual {v0}, Lc8/PEd;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "getDBConfigVersion"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/uFd;->a(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static f()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x8000

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 10

    const/16 v3, 0x17

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v3, :cond_3

    check-cast p0, Landroid/app/Application;

    sget-object v4, Lc8/uFd;->g:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "checkSelfPermission"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lc8/fFd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    :cond_0
    :goto_2
    return v0

    :catch_0
    move-exception v3

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    sget-object v3, Lc8/uFd;->g:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/uFd;->b(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "str2Base64"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g()V
    .locals 1

    sget-object v0, Lc8/uFd;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "S128DF1572465B890OE3F7A13167KLEI"

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc8/UFd;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "amap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "openamaplocationsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
