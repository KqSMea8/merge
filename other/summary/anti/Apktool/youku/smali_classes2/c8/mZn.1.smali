.class public Lc8/mZn;
.super Lc8/utd;
.source "OrmDBHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "downloader"

.field public static final DB_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string/jumbo v0, "downloader"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/utd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "databaseVersion"    # I

    .prologue
    .line 27
    const-string/jumbo v0, "downloader"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p3, v1}, Lc8/utd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lc8/Awd;)V
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lc8/Awd;

    .prologue
    .line 37
    :try_start_0
    const-class v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    invoke-static {p2, v1}, Lc8/Mwd;->createTable(Lc8/Awd;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lc8/Awd;II)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lc8/Awd;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 46
    :try_start_0
    const-class v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lc8/Mwd;->dropTable(Lc8/Awd;Ljava/lang/Class;Z)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    invoke-virtual {p0, p1, p2}, Lc8/mZn;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lc8/Awd;)V

    .line 52
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
