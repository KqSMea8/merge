.class public Lc8/SKj;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StepDbHelper.java"


# static fields
.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_SENSOR:Ljava/lang/String; = "sensor"

.field public static final COLUMN_STEP:Ljava/lang/String; = "step"

.field public static final TABLE_NAME:Ljava/lang/String; = "setp_table"

.field private static TAG:Ljava/lang/String;

.field private static instance:Lc8/SKj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "YKPedometer.StepDbHelper"

    sput-object v0, Lc8/SKj;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "step.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/SKj;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lc8/SKj;->instance:Lc8/SKj;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lc8/SKj;->instance:Lc8/SKj;

    .line 35
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-class v1, Lc8/SKj;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lc8/SKj;->instance:Lc8/SKj;

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lc8/SKj;->instance:Lc8/SKj;

    monitor-exit v1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34
    :cond_1
    :try_start_1
    new-instance v0, Lc8/SKj;

    invoke-direct {v0, p0}, Lc8/SKj;-><init>(Landroid/content/Context;)V

    .line 35
    sput-object v0, Lc8/SKj;->instance:Lc8/SKj;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 42
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS setp_table(date VARCHAR PRIMARY KEY,step VARCHAR,sensor VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 64
    :try_start_0
    const-string/jumbo v0, "DROP TABLE IF EXISTS setp_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lc8/SKj;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v0, "DROP TABLE IF EXISTS setp_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lc8/SKj;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
