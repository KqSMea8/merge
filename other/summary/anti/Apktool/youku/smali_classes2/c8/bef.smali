.class public final Lc8/bef;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aef;
    }
.end annotation


# static fields
.field private static final FULL_TEXT_INDEX_SUFFIX:Ljava/lang/String; = "_fulltext"

.field private static final SQLITE_TYPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EntrySchema"

.field public static final TYPE_BLOB:I = 0x7

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lc8/aef;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lc8/bef;->SQLITE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/Zdf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/android/trade/template/db/Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p1}, Lc8/bef;->parseColumnInfo(Ljava/lang/Class;)[Lc8/aef;

    move-result-object v1

    .line 48
    .local v1, "columns":[Lc8/aef;
    invoke-direct {p0, p1}, Lc8/bef;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    .line 52
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 53
    .local v4, "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 54
    .local v2, "hasFullTextIndex":Z
    if-eqz v1, :cond_1

    .line 55
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 56
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-eq v3, v5, :cond_1

    .line 57
    aget-object v0, v1, v3

    .line 58
    .local v0, "column":Lc8/aef;
    iget-object v5, v0, Lc8/aef;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 59
    iget-boolean v5, v0, Lc8/aef;->fullText:Z

    if-eqz v5, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "column":Lc8/aef;
    .end local v3    # "i":I
    :cond_1
    iput-object v4, p0, Lc8/bef;->mProjection:[Ljava/lang/String;

    .line 66
    iput-boolean v2, p0, Lc8/bef;->mHasFullTextIndex:Z

    .line 67
    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/aef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/trade/template/db/EntrySchema$ColumnInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 456
    .local v9, "fields":[Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v9

    if-eq v10, v0, :cond_9

    .line 458
    aget-object v6, v9, v10

    .line 460
    .local v6, "field":Ljava/lang/reflect/Field;
    const-class v0, Lc8/Wdf;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lc8/Wdf;

    .line 461
    .local v11, "info":Lc8/Wdf;
    if-eqz v11, :cond_0

    .line 465
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 466
    .local v8, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    if-ne v8, v0, :cond_1

    .line 467
    const/4 v2, 0x0

    .line 488
    .local v2, "type":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 489
    .local v7, "index":I
    new-instance v0, Lc8/aef;

    invoke-interface {v11}, Lc8/Wdf;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lc8/Wdf;->indexed()Z

    move-result v3

    invoke-interface {v11}, Lc8/Wdf;->fullText()Z

    move-result v4

    invoke-interface {v11}, Lc8/Wdf;->defaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v7}, Lc8/aef;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v2    # "type":I
    .end local v7    # "index":I
    .end local v8    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 468
    .restart local v8    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_2

    .line 469
    const/4 v2, 0x1

    .restart local v2    # "type":I
    goto :goto_1

    .line 470
    .end local v2    # "type":I
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_3

    .line 471
    const/4 v2, 0x2

    .restart local v2    # "type":I
    goto :goto_1

    .line 472
    .end local v2    # "type":I
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_4

    .line 473
    const/4 v2, 0x3

    .restart local v2    # "type":I
    goto :goto_1

    .line 474
    .end local v2    # "type":I
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_5

    .line 475
    const/4 v2, 0x4

    .restart local v2    # "type":I
    goto :goto_1

    .line 476
    .end local v2    # "type":I
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_6

    .line 477
    const/4 v2, 0x5

    .restart local v2    # "type":I
    goto :goto_1

    .line 478
    .end local v2    # "type":I
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_7

    .line 479
    const/4 v2, 0x6

    .restart local v2    # "type":I
    goto :goto_1

    .line 480
    .end local v2    # "type":I
    :cond_7
    const-class v0, [B

    if-ne v8, v0, :cond_8

    .line 481
    const/4 v2, 0x7

    .restart local v2    # "type":I
    goto :goto_1

    .line 483
    .end local v2    # "type":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field type for column: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "info":Lc8/Wdf;
    :cond_9
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lc8/aef;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lc8/aef;"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/trade/template/db/EntrySchema$ColumnInfo;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 442
    invoke-direct {p0, p1, v1}, Lc8/bef;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 443
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lc8/aef;

    .line 448
    .local v0, "columnList":[Lc8/aef;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 450
    return-object v0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lc8/Ydf;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc8/Ydf;

    .line 431
    .local v0, "table":Lc8/Ydf;
    if-nez v0, :cond_0

    .line 432
    const/4 v1, 0x0

    .line 436
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lc8/Ydf;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p3, :cond_0

    invoke-static {p1, p2, p3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/16 v13, 0x2c

    const/4 v11, 0x0

    .line 291
    iget-object v9, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    .line 292
    .local v9, "tableName":Ljava/lang/String;
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Lc8/ief;->assertTrue(Z)V

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "CREATE TABLE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .local v8, "sql":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v10, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    .local v0, "arr$":[Lc8/aef;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v1, v0, v4

    .line 299
    .local v1, "column":Lc8/aef;
    invoke-virtual {v1}, Lc8/aef;->isId()Z

    move-result v10

    if-nez v10, :cond_0

    .line 300
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    iget-object v10, v1, Lc8/aef;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    sget-object v10, Lc8/bef;->SQLITE_TYPES:[Ljava/lang/String;

    iget v12, v1, Lc8/aef;->type:I

    aget-object v10, v10, v12

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v10, v1, Lc8/aef;->defaultValue:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 305
    const-string/jumbo v10, " DEFAULT "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v10, v1, Lc8/aef;->defaultValue:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Lc8/aef;
    .end local v1    # "column":Lc8/aef;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "sql":Ljava/lang/StringBuilder;
    :cond_1
    move v10, v11

    .line 292
    goto :goto_0

    .line 310
    .restart local v0    # "arr$":[Lc8/aef;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "sql":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_4

    aget-object v1, v0, v4

    .line 317
    .restart local v1    # "column":Lc8/aef;
    iget-boolean v10, v1, Lc8/aef;->indexed:Z

    if-eqz v10, :cond_3

    .line 318
    const-string/jumbo v10, "CREATE INDEX "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string/jumbo v10, "_index_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v10, v1, Lc8/aef;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v10, " ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v10, v1, Lc8/aef;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 332
    .end local v1    # "column":Lc8/aef;
    :cond_4
    iget-boolean v10, p0, Lc8/bef;->mHasFullTextIndex:Z

    if-eqz v10, :cond_b

    .line 334
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "_fulltext"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "ftsTableName":Ljava/lang/String;
    const-string/jumbo v10, "CREATE VIRTUAL TABLE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string/jumbo v10, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_6

    aget-object v1, v0, v4

    .line 339
    .restart local v1    # "column":Lc8/aef;
    iget-boolean v10, v1, Lc8/aef;->fullText:Z

    if-eqz v10, :cond_5

    .line 341
    iget-object v2, v1, Lc8/aef;->name:Ljava/lang/String;

    .line 342
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string/jumbo v10, " TEXT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .end local v2    # "columnName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 347
    .end local v1    # "column":Lc8/aef;
    :cond_6
    const-string/jumbo v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .local v5, "insertSql":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v10, " (_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_8

    aget-object v1, v0, v4

    .line 357
    .restart local v1    # "column":Lc8/aef;
    iget-boolean v10, v1, Lc8/aef;->fullText:Z

    if-eqz v10, :cond_7

    .line 358
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    iget-object v10, v1, Lc8/aef;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 362
    .end local v1    # "column":Lc8/aef;
    :cond_8
    const-string/jumbo v10, ") VALUES (new._id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_a

    aget-object v1, v0, v4

    .line 364
    .restart local v1    # "column":Lc8/aef;
    iget-boolean v10, v1, Lc8/aef;->fullText:Z

    if-eqz v10, :cond_9

    .line 365
    const-string/jumbo v10, ",new."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v10, v1, Lc8/aef;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 369
    .end local v1    # "column":Lc8/aef;
    :cond_a
    const-string/jumbo v10, ");"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "insertSqlString":Ljava/lang/String;
    const-string/jumbo v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v10, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string/jumbo v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string/jumbo v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 381
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 384
    const-string/jumbo v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string/jumbo v10, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string/jumbo v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string/jumbo v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 395
    const-string/jumbo v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string/jumbo v10, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v10, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v10, " WHERE _id = old._id; END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 405
    .end local v3    # "ftsTableName":Ljava/lang/String;
    .end local v5    # "insertSql":Ljava/lang/StringBuilder;
    .end local v6    # "insertSqlString":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public cursorToObject(Landroid/database/Cursor;Lc8/Zdf;)Lc8/Zdf;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Zdf;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "object":Lc8/Zdf;, "TT;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 101
    :try_start_0
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    .local v0, "arr$":[Lc8/aef;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 102
    .local v1, "column":Lc8/aef;
    iget v2, v1, Lc8/aef;->projectionIndex:I

    .line 103
    .local v2, "columnIndex":I
    iget-object v4, v1, Lc8/aef;->field:Ljava/lang/reflect/Field;

    .line 104
    .local v4, "field":Ljava/lang/reflect/Field;
    iget v7, v1, Lc8/aef;->type:I

    packed-switch v7, :pswitch_data_0

    .line 101
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v8

    :goto_2
    invoke-static {v4, p2, v7}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    .end local v0    # "arr$":[Lc8/aef;
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnIndex":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 106
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "arr$":[Lc8/aef;
    .restart local v1    # "column":Lc8/aef;
    .restart local v2    # "columnIndex":I
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_0
    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 110
    :pswitch_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-ne v7, v9, :cond_1

    move v7, v9

    :goto_3
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    .line 113
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_1

    .line 116
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 119
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    .line 122
    :pswitch_5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    .line 125
    :pswitch_6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 128
    :pswitch_7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v8

    :goto_4
    invoke-static {v4, p2, v7}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_4

    .line 134
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnIndex":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_3
    return-object p2

    .line 104
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
    .end packed-switch
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 286
    iget-object v2, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/16 v3, 0x3b

    .line 408
    iget-object v1, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    .line 409
    .local v1, "tableName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "sql":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 413
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 415
    iget-boolean v2, p0, Lc8/bef;->mHasFullTextIndex:Z

    if-eqz v2, :cond_0

    .line 416
    const-string/jumbo v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string/jumbo v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lc8/bef;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lc8/aef;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lc8/bef;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    .local v0, "arr$":[Lc8/aef;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 83
    .local v1, "column":Lc8/aef;
    iget-object v4, v1, Lc8/aef;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    iget v4, v1, Lc8/aef;->projectionIndex:I

    .line 87
    .end local v1    # "column":Lc8/aef;
    :goto_1
    return v4

    .line 82
    .restart local v1    # "column":Lc8/aef;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "column":Lc8/aef;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getColumnInfo()[Lc8/aef;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/bef;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lc8/Zdf;)J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "entry"    # Lc8/Zdf;

    .prologue
    .line 275
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v2}, Lc8/bef;->objectToValues(Lc8/Zdf;Landroid/content/ContentValues;)V

    .line 277
    iget-wide v4, p2, Lc8/Zdf;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 278
    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 280
    :cond_0
    iget-object v3, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    const-string/jumbo v4, "_id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 281
    .local v0, "id":J
    iput-wide v0, p2, Lc8/Zdf;->id:J

    .line 282
    return-wide v0
.end method

.method public objectToValues(Lc8/Zdf;Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "object"    # Lc8/Zdf;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    .local v0, "arr$":[Lc8/aef;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 190
    .local v1, "column":Lc8/aef;
    iget-object v2, v1, Lc8/aef;->name:Ljava/lang/String;

    .line 191
    .local v2, "columnName":Ljava/lang/String;
    iget-object v4, v1, Lc8/aef;->field:Ljava/lang/reflect/Field;

    .line 192
    .local v4, "field":Ljava/lang/reflect/Field;
    iget v7, v1, Lc8/aef;->type:I

    packed-switch v7, :pswitch_data_0

    .line 189
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 219
    .end local v0    # "arr$":[Lc8/aef;
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 197
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "arr$":[Lc8/aef;
    .restart local v1    # "column":Lc8/aef;
    .restart local v2    # "columnName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :pswitch_1
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 200
    :pswitch_2
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 203
    :pswitch_3
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 206
    :pswitch_4
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 209
    :pswitch_5
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 212
    :pswitch_6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 215
    :pswitch_7
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 221
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 192
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
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lc8/bef;->mProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLc8/Zdf;)Z
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # J
    .param p4, "entry"    # Lc8/Zdf;

    .prologue
    const/4 v5, 0x0

    .line 263
    iget-object v1, p0, Lc8/bef;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lc8/bef;->mProjection:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 265
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 266
    .local v9, "success":Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, v8, p4}, Lc8/bef;->cursorToObject(Landroid/database/Cursor;Lc8/Zdf;)Lc8/Zdf;

    .line 268
    const/4 v9, 0x1

    .line 270
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 271
    return v9
.end method

.method public toDebugString(Lc8/Zdf;)Ljava/lang/String;
    .locals 12
    .param p1, "entry"    # Lc8/Zdf;

    .prologue
    .line 226
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lc8/Zdf;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    .local v0, "arr$":[Lc8/aef;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 229
    .local v1, "column":Lc8/aef;
    iget-object v2, v1, Lc8/aef;->name:Ljava/lang/String;

    .line 230
    .local v2, "columnName":Ljava/lang/String;
    iget-object v4, v1, Lc8/aef;->field:Ljava/lang/reflect/Field;

    .line 231
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 232
    .local v8, "value":Ljava/lang/Object;
    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_0

    const-string/jumbo v9, "null"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 235
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 236
    .end local v0    # "arr$":[Lc8/aef;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public varargs toDebugString(Lc8/Zdf;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "entry"    # Lc8/Zdf;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 243
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lc8/Zdf;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, p2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 246
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/bef;->getColumn(Ljava/lang/String;)Lc8/aef;

    move-result-object v1

    .line 247
    .local v1, "column":Lc8/aef;
    iget-object v4, v1, Lc8/aef;->field:Ljava/lang/reflect/Field;

    .line 248
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 249
    .local v8, "value":Ljava/lang/Object;
    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_0

    const-string/jumbo v9, "null"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 252
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 253
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public valuesToObject(Landroid/content/ContentValues;Lc8/Zdf;)Lc8/Zdf;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Zdf;",
            ">(",
            "Landroid/content/ContentValues;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "object":Lc8/Zdf;, "TT;"
    :try_start_0
    iget-object v0, p0, Lc8/bef;->mColumnInfo:[Lc8/aef;

    .local v0, "arr$":[Lc8/aef;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 152
    .local v1, "column":Lc8/aef;
    iget-object v2, v1, Lc8/aef;->name:Ljava/lang/String;

    .line 153
    .local v2, "columnName":Ljava/lang/String;
    iget-object v4, v1, Lc8/aef;->field:Ljava/lang/reflect/Field;

    .line 154
    .local v4, "field":Ljava/lang/reflect/Field;
    iget v7, v1, Lc8/aef;->type:I

    packed-switch v7, :pswitch_data_0

    .line 151
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 182
    .end local v0    # "arr$":[Lc8/aef;
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 159
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "arr$":[Lc8/aef;
    .restart local v1    # "column":Lc8/aef;
    .restart local v2    # "columnName":Ljava/lang/String;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :pswitch_1
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 162
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 168
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 171
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 174
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 177
    :pswitch_7
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lc8/bef;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 181
    .end local v1    # "column":Lc8/aef;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    return-object p2

    .line 154
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
    .end packed-switch
.end method
