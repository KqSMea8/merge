.class public final Lc8/eef;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final DATABASE_VERSION:I = 0x1


# instance fields
.field final synthetic this$0:Lc8/hef;


# direct methods
.method public constructor <init>(Lc8/hef;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dbName"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lc8/eef;->this$0:Lc8/hef;

    .line 339
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 340
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 344
    sget-object v5, Lc8/gef;->SCHEMA:Lc8/bef;

    invoke-virtual {v5, p1}, Lc8/bef;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 347
    iget-object v5, p0, Lc8/eef;->this$0:Lc8/hef;

    invoke-static {v5}, Lc8/hef;->access$300(Lc8/hef;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 348
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 349
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 350
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 360
    sget-object v0, Lc8/gef;->SCHEMA:Lc8/bef;

    invoke-virtual {v0, p1}, Lc8/bef;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 361
    invoke-virtual {p0, p1}, Lc8/eef;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 362
    return-void
.end method
