.class public final Lc8/oPc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lc8/oPc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lc8/oPc;
    .locals 8

    .prologue
    .line 74
    const-class v1, Lc8/oPc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/oPc;->c:Lc8/oPc;

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Lc8/oPc;

    invoke-direct {v0}, Lc8/oPc;-><init>()V

    sput-object v0, Lc8/oPc;->c:Lc8/oPc;

    .line 76
    invoke-static {}, Lc8/mPc;->a()Lc8/mPc;

    move-result-object v0

    .line 1042
    iget-object v0, v0, Lc8/mPc;->a:Landroid/content/Context;

    .line 77
    new-instance v2, Lc8/nPc;

    invoke-direct {v2, v0}, Lc8/nPc;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-static {v0}, Lc8/qPc;->a(Landroid/content/Context;)Lc8/qPc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/qPc;->a()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v0}, Lc8/qPc;->a(Landroid/content/Context;)Lc8/qPc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qPc;->b()Ljava/lang/String;

    move-result-object v4

    .line 81
    sget-object v0, Lc8/oPc;->c:Lc8/oPc;

    invoke-virtual {v2, v3, v4}, Lc8/nPc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/oPc;->a:Ljava/lang/String;

    .line 82
    sget-object v0, Lc8/oPc;->c:Lc8/oPc;

    invoke-virtual {v2, v3, v4}, Lc8/nPc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/oPc;->b:Ljava/lang/String;

    .line 83
    sget-object v0, Lc8/oPc;->c:Lc8/oPc;

    iget-object v0, v0, Lc8/oPc;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v5, Lc8/oPc;->c:Lc8/oPc;

    .line 1103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 1105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    iput-object v0, v5, Lc8/oPc;->b:Ljava/lang/String;

    .line 86
    :cond_1
    sget-object v0, Lc8/oPc;->c:Lc8/oPc;

    iget-object v0, v0, Lc8/oPc;->a:Ljava/lang/String;

    sget-object v5, Lc8/oPc;->c:Lc8/oPc;

    iget-object v5, v5, Lc8/oPc;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lc8/nPc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2
    sget-object v0, Lc8/oPc;->c:Lc8/oPc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 58
    new-instance v1, Lc8/nPc;

    invoke-direct {v1, p1}, Lc8/nPc;-><init>(Landroid/content/Context;)V

    .line 60
    :try_start_0
    invoke-static {p1}, Lc8/qPc;->a(Landroid/content/Context;)Lc8/qPc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qPc;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p1}, Lc8/qPc;->a(Landroid/content/Context;)Lc8/qPc;

    move-result-object v2

    invoke-virtual {v2}, Lc8/qPc;->b()Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lc8/oPc;->a:Ljava/lang/String;

    iget-object v4, p0, Lc8/oPc;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lc8/nPc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v1}, Lc8/nPc;->close()V

    .line 66
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lc8/nPc;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lc8/nPc;->close()V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lc8/oPc;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/oPc;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lc8/oPc;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/oPc;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/oPc;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static e()V
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Lc8/mPc;->a()Lc8/mPc;

    move-result-object v0

    .line 2042
    iget-object v1, v0, Lc8/mPc;->a:Landroid/content/Context;

    .line 93
    invoke-static {v1}, Lc8/qPc;->a(Landroid/content/Context;)Lc8/qPc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qPc;->a()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1}, Lc8/qPc;->a(Landroid/content/Context;)Lc8/qPc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qPc;->b()Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v0, Lc8/nPc;

    invoke-direct {v0, v1}, Lc8/nPc;-><init>(Landroid/content/Context;)V

    .line 2068
    const/4 v1, 0x0

    .line 2070
    :try_start_0
    invoke-virtual {v0}, Lc8/nPc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2072
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lc8/nPc;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    invoke-static {v2, v3}, Lc8/nPc;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/nPc;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2076
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2077
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lc8/nPc;->close()V

    .line 100
    return-void

    .line 2076
    :catch_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2077
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2076
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2077
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v0
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    return-object v0
.end method
