.class public Lc8/GXe;
.super Lc8/CXe;
.source "AVFSDefaultDataBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FXe;
    }
.end annotation


# instance fields
.field private final mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lc8/GXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lc8/CXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    new-instance v0, Lc8/FXe;

    invoke-static {}, Lc8/SXe;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/FXe;-><init>(Lc8/GXe;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    .local v0, "helper":Lc8/FXe;
    invoke-virtual {v0}, Lc8/FXe;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lc8/GXe;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    return-void
.end method

.method private toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 90
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 91
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 92
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method


# virtual methods
.method public close()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lc8/GXe;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public execQuery(Ljava/lang/String;)Lc8/zXe;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v2, p0, Lc8/GXe;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 33
    .local v1, "result":Landroid/database/Cursor;
    new-instance v0, Lc8/DXe;

    invoke-direct {v0}, Lc8/DXe;-><init>()V

    .line 34
    .local v0, "cursor":Lc8/DXe;
    iput-object v1, v0, Lc8/DXe;->mCursor:Landroid/database/Cursor;

    .line 35
    return-object v0
.end method

.method public execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lc8/zXe;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v2, p0, Lc8/GXe;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lc8/GXe;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 41
    .local v1, "result":Landroid/database/Cursor;
    new-instance v0, Lc8/DXe;

    invoke-direct {v0}, Lc8/DXe;-><init>()V

    .line 42
    .local v0, "cursor":Lc8/DXe;
    iput-object v1, v0, Lc8/DXe;->mCursor:Landroid/database/Cursor;

    .line 43
    return-object v0
.end method

.method public execUpdate(Ljava/lang/String;Lc8/BXe;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/BXe;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execUpdate(Ljava/lang/String;[Ljava/lang/Object;Lc8/BXe;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "callback"    # Lc8/BXe;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lc8/GXe;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lc8/GXe;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
