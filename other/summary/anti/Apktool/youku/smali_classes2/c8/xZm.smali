.class public Lc8/xZm;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MotuReportStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yZm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yZm;


# direct methods
.method public constructor <init>(Lc8/yZm;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/xZm;->this$0:Lc8/yZm;

    .line 59
    const-string/jumbo v0, "motu_report_biz"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 60
    return-void
.end method


# virtual methods
.method public createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS motu_report_info (id VARCHAR,sendContent TEXT, businessType TEXT, aggregationType TEXT, eventId INTEGER, sendFlag TEXT, beginSendTime INTEGER, lastSendTime INTEGER, sendCount INTEGER); "

    .line 73
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lc8/xZm;->createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 83
    return-void
.end method
