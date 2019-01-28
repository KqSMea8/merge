.class public Lc8/hac;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:Lc8/gac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/hac;->a:Ljava/util/List;

    const-string/jumbo v0, ""

    sput-object v0, Lc8/hac;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lc8/hac;->c:J

    return-wide p0
.end method

.method public static declared-synchronized a()Ljava/util/List;
    .locals 8

    const-class v1, Lc8/hac;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lc8/hac;->c:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Lc8/hac;->f()V

    :cond_0
    sget-object v0, Lc8/hac;->a:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lc8/hac;->a:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lc8/gac;)V
    .locals 2

    sput-object p0, Lc8/hac;->d:Lc8/gac;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/hac;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lc8/hac;->c:J

    invoke-static {}, Lc8/hac;->e()V

    invoke-static {}, Lc8/hac;->f()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lc8/hac;->c:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Lc8/hac;->f()V

    :cond_0
    sget-object v1, Lc8/hac;->a:Ljava/util/List;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lc8/hac;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lc8/hac;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lc8/hac;->d:Lc8/gac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lc8/hac;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/hac;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const-class v2, Lc8/hac;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "Alibc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLicense \uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    :try_start_1
    invoke-static {p0}, Lc8/nIb;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "appKey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "componentList"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sput-object v4, Lc8/hac;->a:Ljava/util/List;

    sput-object p0, Lc8/hac;->b:Ljava/lang/String;

    sget-object v1, Lc8/hac;->d:Lc8/gac;

    if-eqz v1, :cond_3

    sget-object v1, Lc8/hac;->d:Lc8/gac;

    invoke-interface {v1}, Lc8/gac;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lc8/hac;->f()V

    return-void
.end method

.method private static e()V
    .locals 1

    const-string/jumbo v0, "BC_Want_License"

    invoke-static {v0}, Lc8/aIb;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/hac;->c(Ljava/lang/String;)Z

    return-void
.end method

.method private static f()V
    .locals 1

    new-instance v0, Lc8/iac;

    invoke-direct {v0}, Lc8/iac;-><init>()V

    invoke-virtual {v0}, Lc8/iac;->start()V

    return-void
.end method
