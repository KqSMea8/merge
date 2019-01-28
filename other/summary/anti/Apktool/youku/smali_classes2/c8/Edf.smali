.class public Lc8/Edf;
.super Ljava/lang/Object;
.source "ELEvaluator.java"


# static fields
.field private static volatile sELEvaluator:Lc8/Edf;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lc8/Mdf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/Mdf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lc8/Mdf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lc8/Edf;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/Edf;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    if-nez p0, :cond_0

    sget-object v0, Lc8/Edf;->sELEvaluator:Lc8/Edf;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context and evaluator cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    sget-object v0, Lc8/Edf;->sELEvaluator:Lc8/Edf;

    if-nez v0, :cond_2

    .line 24
    const-class v1, Lc8/Edf;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lc8/Edf;->sELEvaluator:Lc8/Edf;

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lc8/Edf;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lc8/Edf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Edf;->sELEvaluator:Lc8/Edf;

    .line 29
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_2
    sget-object v0, Lc8/Edf;->sELEvaluator:Lc8/Edf;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isConditionMeet(Ljava/lang/String;)Z
    .locals 7
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lc8/Edf;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 43
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "result":Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    const-string/jumbo v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 48
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 46
    goto :goto_0

    .line 48
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
