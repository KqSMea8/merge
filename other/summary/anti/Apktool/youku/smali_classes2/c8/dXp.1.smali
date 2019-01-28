.class public Lc8/dXp;
.super Ljava/lang/Object;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cXp;
    }
.end annotation


# static fields
.field private static final ACCS_SPACE_NAME:Ljava/lang/String; = "accs_message"

.field private static final ADD_MESSAGE:Ljava/lang/String; = "accs.add_agoo_message"

.field private static final BODY_CODE:Ljava/lang/String; = "body_code"

.field private static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field private static final DATABASE_NAME:Ljava/lang/String; = "message_accs_db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final DEAL_MESSAGE:Ljava/lang/String; = "accs.dealMessage"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_TARGET_TIME:Ljava/lang/String; = "target_time"

.field private static final MESSAGE_TARGET_TIME_INTERVAL:Ljava/lang/String; = "interval"

.field public static final MSG_ACCS_NOTIFY_CLICK:Ljava/lang/String; = "8"

.field public static final MSG_ACCS_NOTIFY_DISMISS:Ljava/lang/String; = "9"

.field public static final MSG_ACCS_READY_REPORT:Ljava/lang/String; = "4"

.field public static final MSG_DB_COMPLETE:Ljava/lang/String; = "100"

.field public static final MSG_DB_NOTIFY_CLICK:Ljava/lang/String; = "2"

.field public static final MSG_DB_NOTIFY_DISMISS:Ljava/lang/String; = "3"

.field public static final MSG_DB_NOTIFY_REACHED:Ljava/lang/String; = "1"

.field public static final MSG_DB_READY_REPORT:Ljava/lang/String; = "0"

.field private static final NOTICE:I = 0x1

.field private static final NOTIFY:Ljava/lang/String; = "notify"

.field private static final REPORT:Ljava/lang/String; = "report"

.field private static final SPACE_NAME:Ljava/lang/String; = "message"

.field private static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "MessageService"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static mContext:Landroid/content/Context;

.field private static messageStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lc8/dXp;->mContext:Landroid/content/Context;

    .line 50
    sput-object v0, Lc8/dXp;->messageStores:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 69
    return-void
.end method

.method private addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V
    .locals 11
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "fromTime"    # J
    .param p7, "toTime"    # I
    .param p8, "notify"    # I

    .prologue
    .line 249
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add sqlite3--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const/4 v9, 0x0

    .line 252
    .local v9, "report":I
    const/4 v7, 0x0

    .line 254
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    const-string/jumbo p2, ""

    .line 256
    const/4 v6, -0x1

    .line 260
    .local v6, "bodyHash":I
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo p3, ""

    .line 264
    :cond_0
    sget-object v0, Lc8/dXp;->messageStores:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lc8/dXp;->messageStores:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMessage,messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",messageStores\uff1d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/dXp;->messageStores:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_1
    iget-object v0, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 271
    if-nez v7, :cond_5

    .line 285
    if-eqz v7, :cond_2

    .line 286
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .end local v6    # "bodyHash":I
    :cond_2
    :goto_1
    return-void

    .line 258
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .restart local v6    # "bodyHash":I
    goto :goto_0

    .line 289
    :catch_0
    move-exception v8

    .line 290
    .local v8, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMessage,db.close(),error,e--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_4
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.add_agoo_message"

    sget-object v3, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addMessageDBcloseFailed"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 274
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_5
    :try_start_3
    const-string/jumbo v0, "INSERT INTO message VALUES(?,?,?,?,?,?,?,?,?,date(\'now\'))"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object p3, v1, v2

    const/4 v2, 0x7

    aput-object p2, v1, v2

    const/16 v2, 0x8

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    if-eqz v7, :cond_2

    .line 286
    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 289
    :catch_1
    move-exception v8

    .line 290
    .restart local v8    # "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMessage,db.close(),error,e--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_6
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.add_agoo_message"

    sget-object v3, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addMessageDBcloseFailed"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 278
    .end local v6    # "bodyHash":I
    .end local v8    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v8

    .line 279
    .restart local v8    # "e":Ljava/lang/Throwable;
    :try_start_5
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMessage error,e--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :cond_7
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.add_agoo_message"

    sget-object v3, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addMessageFailed"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    if-eqz v7, :cond_2

    .line 286
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 289
    :catch_3
    move-exception v8

    .line 290
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMessage,db.close(),error,e--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_8
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.add_agoo_message"

    sget-object v3, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addMessageDBcloseFailed"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 284
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    move-object v10, v0

    .line 285
    if-eqz v7, :cond_9

    .line 286
    :try_start_7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 294
    :cond_9
    :goto_2
    throw v10

    .line 289
    :catch_4
    move-exception v8

    .line 290
    .restart local v8    # "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 291
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMessage,db.close(),error,e--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_a
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.add_agoo_message"

    sget-object v3, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addMessageDBcloseFailed"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static final checkPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 580
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 581
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 584
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 585
    const/4 v2, 0x1

    .line 590
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getFlag(JLc8/DWp;)Landroid/os/Bundle;
    .locals 8
    .param p0, "flag"    # J
    .param p2, "msgDO"    # Lc8/DWp;

    .prologue
    const/16 v7, 0x9

    const/16 v3, 0x8

    const/16 v6, 0x31

    .line 594
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v0, "flagExtras":Landroid/os/Bundle;
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 598
    .local v1, "flags":[C
    if-eqz v1, :cond_4

    array-length v2, v1

    if-gt v3, v2, :cond_4

    .line 599
    array-length v2, v1

    if-gt v3, v2, :cond_1

    .line 600
    const-string/jumbo v2, "encrypted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v2, 0x6

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_0

    .line 606
    const-string/jumbo v2, "report"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v2, "1"

    iput-object v2, p2, Lc8/DWp;->reportStr:Ljava/lang/String;

    .line 609
    :cond_0
    const/4 v2, 0x7

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_1

    .line 610
    const-string/jumbo v2, "notify"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_1
    array-length v2, v1

    if-gt v7, v2, :cond_2

    .line 615
    const/16 v2, 0x8

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_2

    .line 616
    const-string/jumbo v2, "has_test"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_2
    const/16 v2, 0xa

    array-length v3, v1

    if-gt v2, v3, :cond_3

    .line 621
    const/16 v2, 0x9

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_3

    .line 622
    const-string/jumbo v2, "duplicate"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_3
    const/16 v2, 0xb

    array-length v3, v1

    if-gt v2, v3, :cond_4

    .line 627
    const/16 v2, 0xa

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_4

    .line 628
    const-string/jumbo v2, "popup"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v1    # "flags":[C
    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 231
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 233
    .local v3, "stackArray":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 235
    aget-object v0, v3, v1

    .line 236
    .local v0, "element":Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addAccsMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 196
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addAccsMessage sqlite3--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_0
    const/4 v6, 0x0

    .line 202
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    :cond_1
    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_2
    :goto_0
    return-void

    .line 205
    :cond_3
    :try_start_1
    iget-object v0, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 206
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v7, :cond_4

    .line 224
    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 209
    :cond_4
    :try_start_2
    const-string/jumbo v0, "select count(1) from accs_message where id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 215
    :cond_5
    :try_start_3
    const-string/jumbo v0, "INSERT INTO accs_message VALUES(?,?,?,date(\'now\'))"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 218
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v8

    .line 219
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_4
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addAccsMessage error,e--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lc8/dXp;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_6
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.add_agoo_message"

    sget-object v3, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addAccsMessageFailed"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 224
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "notify"    # I

    .prologue
    .line 244
    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lc8/dXp;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 245
    return-void
.end method

.method public createMsg(Ljava/lang/String;Ljava/lang/String;)Lc8/DWp;
    .locals 25
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "msgStatus"    # Ljava/lang/String;

    .prologue
    .line 481
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    const-string/jumbo v2, "MessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msgRecevie,message--->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d2

    const-string/jumbo v4, "accs.dealMessage"

    sget-object v5, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "message==null"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    const-string/jumbo v2, "MessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage message==null,utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :cond_1
    const/16 v22, 0x0

    .line 572
    :cond_2
    :goto_0
    return-object v22

    .line 491
    :cond_3
    new-instance v22, Lc8/DWp;

    invoke-direct/range {v22 .. v22}, Lc8/DWp;-><init>()V

    .line 493
    .local v22, "msgDO":Lc8/DWp;
    :try_start_0
    new-instance v20, Lorg/json/JSONArray;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 494
    .local v20, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 497
    .local v21, "len":I
    const/4 v12, 0x0

    .line 499
    .local v12, "extData":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 500
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v18, "ids":Ljava/lang/StringBuilder;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v23, "removeIds":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v24, "removePacks":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 504
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 505
    .local v19, "json":Lorg/json/JSONObject;
    if-eqz v19, :cond_6

    .line 508
    const-string/jumbo v2, "p"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, "pack":Ljava/lang/String;
    const-string/jumbo v2, "i"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 510
    .local v17, "id":Ljava/lang/String;
    const-string/jumbo v2, "b"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 511
    .local v9, "body":Ljava/lang/String;
    const-string/jumbo v2, "f"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 512
    .local v14, "flag":J
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string/jumbo v2, "ext"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 514
    const-string/jumbo v2, "ext"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 517
    :cond_4
    add-int/lit8 v2, v21, -0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 518
    const-string/jumbo v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    iput-object v0, v1, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 521
    move-object/from16 v0, v22

    iput-object v12, v0, Lc8/DWp;->extData:Ljava/lang/String;

    .line 522
    const-string/jumbo v2, "accs"

    move-object/from16 v0, v22

    iput-object v2, v0, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 523
    const-string/jumbo v2, "cache"

    move-object/from16 v0, v22

    iput-object v2, v0, Lc8/DWp;->type:Ljava/lang/String;

    .line 524
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 525
    const-string/jumbo v2, "11"

    move-object/from16 v0, v22

    iput-object v2, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 503
    .end local v7    # "pack":Ljava/lang/String;
    .end local v9    # "body":Ljava/lang/String;
    .end local v14    # "flag":J
    .end local v17    # "id":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 528
    .restart local v7    # "pack":Ljava/lang/String;
    .restart local v9    # "body":Ljava/lang/String;
    .restart local v14    # "flag":J
    .restart local v17    # "id":Ljava/lang/String;
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 529
    const-string/jumbo v2, "12"

    move-object/from16 v0, v22

    iput-object v2, v0, Lc8/DWp;->errorCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 567
    .end local v7    # "pack":Ljava/lang/String;
    .end local v9    # "body":Ljava/lang/String;
    .end local v12    # "extData":Ljava/lang/String;
    .end local v14    # "flag":J
    .end local v16    # "i":I
    .end local v17    # "id":Ljava/lang/String;
    .end local v18    # "ids":Ljava/lang/StringBuilder;
    .end local v19    # "json":Lorg/json/JSONObject;
    .end local v20    # "jsonArray":Lorg/json/JSONArray;
    .end local v21    # "len":I
    .end local v23    # "removeIds":Ljava/lang/StringBuilder;
    .end local v24    # "removePacks":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 568
    .local v10, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    const-string/jumbo v2, "MessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createMsg is error,e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 532
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v7    # "pack":Ljava/lang/String;
    .restart local v9    # "body":Ljava/lang/String;
    .restart local v12    # "extData":Ljava/lang/String;
    .restart local v14    # "flag":J
    .restart local v16    # "i":I
    .restart local v17    # "id":Ljava/lang/String;
    .restart local v18    # "ids":Ljava/lang/StringBuilder;
    .restart local v19    # "json":Lorg/json/JSONObject;
    .restart local v20    # "jsonArray":Lorg/json/JSONArray;
    .restart local v21    # "len":I
    .restart local v23    # "removeIds":Ljava/lang/StringBuilder;
    .restart local v24    # "removePacks":Ljava/lang/StringBuilder;
    :cond_8
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_9

    .line 533
    :try_start_1
    const-string/jumbo v2, "13"

    move-object/from16 v0, v22

    iput-object v2, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    goto :goto_2

    .line 536
    :cond_9
    sget-object v2, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lc8/dXp;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 537
    const-string/jumbo v2, "MessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ondata checkpackage is del,pack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d2

    const-string/jumbo v4, "accs.dealMessage"

    sget-object v5, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "deletePack"

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    move-object/from16 v0, v22

    iput-object v7, v0, Lc8/DWp;->removePacks:Ljava/lang/String;

    .line 542
    add-int/lit8 v2, v21, -0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 543
    const-string/jumbo v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string/jumbo v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 548
    :cond_a
    move-object/from16 v0, v22

    invoke-static {v14, v15, v0}, Lc8/dXp;->getFlag(JLc8/DWp;)Landroid/os/Bundle;

    move-result-object v13

    .line 549
    .local v13, "flagExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "encrypted"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 551
    .local v11, "encrypted":Ljava/lang/String;
    const/4 v8, 0x0

    .line 552
    .local v8, "agooFlag":Z
    sget-object v2, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 554
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 555
    const-string/jumbo v2, "15"

    move-object/from16 v0, v22

    iput-object v2, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 556
    const-string/jumbo v2, "MessageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error encrypted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 560
    :cond_b
    const/4 v8, 0x1

    .line 562
    :cond_c
    move-object/from16 v0, v22

    iput-boolean v8, v0, Lc8/DWp;->agooFlag:Z

    .line 563
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 564
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    iput-object v0, v1, Lc8/DWp;->msgStatus:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public deleteCacheMessage()V
    .locals 5

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 306
    if-nez v0, :cond_1

    .line 318
    if-eqz v0, :cond_0

    .line 319
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    :try_start_2
    const-string/jumbo v2, "delete from message where create_time< date(\'now\',\'-7 day\') and state=1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v2, "delete from accs_message where create_time< date(\'now\',\'-1 day\') "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    goto :goto_0

    .line 314
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v2, "MessageService"

    const-string/jumbo v3, "deleteCacheMessage sql Throwable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 325
    :catch_2
    move-exception v2

    goto :goto_0

    .line 317
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 318
    if-eqz v0, :cond_2

    .line 319
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 324
    :cond_2
    :goto_1
    throw v2

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public getUnReportMsg()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/DWp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 335
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 337
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 338
    if-nez v2, :cond_2

    .line 339
    const/4 v14, 0x0

    .line 382
    if-eqz v1, :cond_0

    .line 383
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_0
    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    :cond_1
    :goto_0
    return-object v14

    .line 390
    :catch_0
    move-exception v3

    .line 391
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v15, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v15}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 392
    const-string/jumbo v15, "MessageService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getUnReportMsg close cursor or db, e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 341
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    :try_start_3
    const-string/jumbo v14, "select * from accs_message where state = ? or state = ? or state = ?"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "2"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "3"

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_b

    .line 346
    const-string/jumbo v14, "id"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 347
    .local v4, "idColumn":I
    const-string/jumbo v14, "state"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 348
    .local v11, "stateColumn":I
    const-string/jumbo v14, "message"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 349
    .local v8, "messageColumn":I
    const-string/jumbo v14, "create_time"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 351
    .local v13, "timeColumn":I
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 352
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 353
    .local v10, "state":Ljava/lang/String;
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 354
    .local v7, "message":Ljava/lang/String;
    sget-object v14, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v14}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 355
    const-string/jumbo v14, "MessageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ,cursor.message:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ,cursor.id:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ,cursor.time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_4
    const/4 v12, 0x0

    .line 359
    .local v12, "status":Ljava/lang/String;
    const-string/jumbo v14, "0"

    invoke-static {v14, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 360
    const-string/jumbo v12, "4"

    .line 366
    :cond_5
    :goto_2
    new-instance v14, Lc8/DWp;

    invoke-direct {v14}, Lc8/DWp;-><init>()V

    .line 367
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lc8/dXp;->createMsg(Ljava/lang/String;Ljava/lang/String;)Lc8/DWp;

    move-result-object v9

    .line 369
    .local v9, "msg":Lc8/DWp;
    const-string/jumbo v14, "cache"

    iput-object v14, v9, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 373
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 376
    .end local v4    # "idColumn":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "messageColumn":I
    .end local v9    # "msg":Lc8/DWp;
    .end local v10    # "state":Ljava/lang/String;
    .end local v11    # "stateColumn":I
    .end local v12    # "status":Ljava/lang/String;
    .end local v13    # "timeColumn":I
    :catch_1
    move-exception v3

    move-object v5, v6

    .line 377
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v3    # "e":Ljava/lang/Throwable;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    :goto_3
    :try_start_4
    sget-object v14, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v14}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 378
    const-string/jumbo v14, "MessageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getUnReportMsg, e: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    :cond_6
    if-eqz v1, :cond_7

    .line 383
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_7
    if-eqz v2, :cond_8

    .line 387
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_8
    :goto_4
    move-object v14, v5

    .line 396
    goto/16 :goto_0

    .line 361
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v4    # "idColumn":I
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "messageColumn":I
    .restart local v10    # "state":Ljava/lang/String;
    .restart local v11    # "stateColumn":I
    .restart local v12    # "status":Ljava/lang/String;
    .restart local v13    # "timeColumn":I
    :cond_9
    :try_start_6
    const-string/jumbo v14, "2"

    invoke-static {v14, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 362
    const-string/jumbo v12, "8"

    goto :goto_2

    .line 363
    :cond_a
    const-string/jumbo v14, "3"

    invoke-static {v14, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 364
    const-string/jumbo v12, "9"
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 382
    .end local v4    # "idColumn":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "messageColumn":I
    .end local v10    # "state":Ljava/lang/String;
    .end local v11    # "stateColumn":I
    .end local v12    # "status":Ljava/lang/String;
    .end local v13    # "timeColumn":I
    :cond_b
    if-eqz v1, :cond_c

    .line 383
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_c
    if-eqz v2, :cond_d

    .line 387
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_d
    move-object v5, v6

    .line 394
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    goto :goto_4

    .line 390
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    :catch_2
    move-exception v3

    .line 391
    .restart local v3    # "e":Ljava/lang/Throwable;
    sget-object v14, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v14}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 392
    const-string/jumbo v14, "MessageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getUnReportMsg close cursor or db, e: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    move-object v5, v6

    .line 395
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    goto :goto_4

    .line 390
    :catch_3
    move-exception v3

    .line 391
    sget-object v14, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v14}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 392
    const-string/jumbo v14, "MessageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getUnReportMsg close cursor or db, e: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 381
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    .line 382
    :goto_5
    if-eqz v1, :cond_f

    .line 383
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_f
    if-eqz v2, :cond_10

    .line 387
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 394
    :cond_10
    :goto_6
    throw v14

    .line 390
    :catch_4
    move-exception v3

    .line 391
    .restart local v3    # "e":Ljava/lang/Throwable;
    sget-object v15, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v15}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 392
    const-string/jumbo v15, "MessageService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getUnReportMsg close cursor or db, e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 381
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    goto :goto_5

    .line 376
    :catch_5
    move-exception v3

    goto/16 :goto_3
.end method

.method public hasMessageDuplicate(Ljava/lang/String;)Z
    .locals 7
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 402
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 405
    .local v0, "bf":Z
    :try_start_0
    sget-object v4, Lc8/dXp;->messageStores:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    const-string/jumbo v4, "MessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasMessageDuplicate,msgid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :cond_0
    const/4 v0, 0x1

    .line 411
    :cond_1
    iget-object v4, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 412
    if-nez v3, :cond_4

    .line 423
    if-eqz v2, :cond_2

    .line 424
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_2
    if-eqz v3, :cond_3

    .line 428
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_0
    move v1, v0

    .line 435
    .end local v0    # "bf":Z
    .local v1, "bf":Z
    :goto_1
    return v1

    .line 415
    .end local v1    # "bf":Z
    .restart local v0    # "bf":Z
    :cond_4
    :try_start_2
    const-string/jumbo v4, "select count(1) from message where id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 417
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-lez v4, :cond_5

    .line 418
    const/4 v0, 0x1

    .line 423
    :cond_5
    if-eqz v2, :cond_6

    .line 424
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_6
    if-eqz v3, :cond_7

    .line 428
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_2
    move v1, v0

    .line 435
    .end local v0    # "bf":Z
    .restart local v1    # "bf":Z
    goto :goto_1

    .end local v1    # "bf":Z
    .restart local v0    # "bf":Z
    :catch_0
    move-exception v4

    .line 423
    if-eqz v2, :cond_8

    .line 424
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_8
    if-eqz v3, :cond_7

    .line 428
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 434
    :catch_1
    move-exception v4

    goto :goto_2

    .line 422
    :catchall_0
    move-exception v4

    .line 423
    if-eqz v2, :cond_9

    .line 424
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_9
    if-eqz v3, :cond_a

    .line 428
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 433
    :cond_a
    :goto_3
    throw v4

    :catch_2
    move-exception v5

    goto :goto_3

    .line 434
    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public hasMessageDuplicate(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "bodyHashCode"    # I

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 441
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 444
    .local v0, "bf":Z
    :try_start_0
    sget-object v4, Lc8/dXp;->messageStores:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lc8/dXp;->messageStores:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    const-string/jumbo v4, "MessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addMessage,messageStores hasMessageDuplicate,msgid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    :cond_0
    const/4 v0, 0x1

    .line 450
    :cond_1
    iget-object v4, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 451
    if-nez v3, :cond_4

    .line 464
    if-eqz v2, :cond_2

    .line 465
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_2
    if-eqz v3, :cond_3

    .line 469
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_0
    move v1, v0

    .line 476
    .end local v0    # "bf":Z
    .local v1, "bf":Z
    :goto_1
    return v1

    .line 454
    .end local v1    # "bf":Z
    .restart local v0    # "bf":Z
    :cond_4
    :try_start_2
    const-string/jumbo v4, "select count(1) from message where id = ? and body_code=? create_time< date(\'now\',\'-1 day\')"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 458
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-lez v4, :cond_5

    .line 459
    const/4 v0, 0x1

    .line 464
    :cond_5
    if-eqz v2, :cond_6

    .line 465
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_6
    if-eqz v3, :cond_7

    .line 469
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_2
    move v1, v0

    .line 476
    .end local v0    # "bf":Z
    .restart local v1    # "bf":Z
    goto :goto_1

    .end local v1    # "bf":Z
    .restart local v0    # "bf":Z
    :catch_0
    move-exception v4

    .line 464
    if-eqz v2, :cond_8

    .line 465
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_8
    if-eqz v3, :cond_7

    .line 469
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 475
    :catch_1
    move-exception v4

    goto :goto_2

    .line 463
    :catchall_0
    move-exception v4

    .line 464
    if-eqz v2, :cond_9

    .line 465
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_9
    if-eqz v3, :cond_a

    .line 469
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 474
    :cond_a
    :goto_3
    throw v4

    :catch_2
    move-exception v5

    goto :goto_3

    .line 475
    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/dXp;->messageStores:Ljava/util/Map;

    .line 64
    sput-object p1, Lc8/dXp;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lc8/cXp;

    invoke-direct {v0, p1}, Lc8/cXp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 66
    return-void
.end method

.method public updateAccsMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 163
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccsMessage sqlite3--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    const/4 v6, 0x0

    .line 168
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    :cond_1
    if-eqz v6, :cond_2

    .line 189
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    :cond_2
    :goto_0
    return-void

    .line 171
    :cond_3
    :try_start_1
    iget-object v0, p0, Lc8/dXp;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 172
    if-nez v6, :cond_4

    .line 188
    if-eqz v6, :cond_2

    .line 189
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 175
    :cond_4
    :try_start_2
    const-string/jumbo v0, "1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    const-string/jumbo v0, "UPDATE accs_message set state = ? where id = ? and state = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    :goto_1
    if-eqz v6, :cond_2

    .line 189
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 179
    :cond_5
    :try_start_3
    const-string/jumbo v0, "UPDATE accs_message set state = ? where id = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception v7

    .line 183
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_4
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    const-string/jumbo v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccsMessage error,e--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_6
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.add_agoo_message"

    sget-object v3, Lc8/dXp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "updateAccsMessageFailed"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz v6, :cond_2

    .line 189
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 188
    .end local v7    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 189
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 190
    :cond_7
    throw v0
.end method
