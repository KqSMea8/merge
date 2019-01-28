.class public Lc8/RJb;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field public static compatibleWithJavaBean:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static setAccessibleEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lc8/RJb;->compatibleWithJavaBean:Z

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lc8/RJb;->setAccessibleEnable:Z

    .line 750
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 752
    sput-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[B"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[S"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[I"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[J"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[F"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[D"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[C"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[Z"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v0, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;
    .locals 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lc8/XIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/XIb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 409
    if-nez p0, :cond_1

    move-object p0, v0

    .line 540
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 413
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    .line 414
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "clazz is null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 417
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq p1, v10, :cond_0

    .line 421
    instance-of v10, p0, Ljava/util/Map;

    if-eqz v10, :cond_4

    .line 422
    const-class v10, Ljava/util/Map;

    if-eq p1, v10, :cond_0

    move-object v7, p0

    .line 426
    check-cast v7, Ljava/util/Map;

    .line 427
    .local v7, "map":Ljava/util/Map;
    const-class v10, Ljava/lang/Object;

    if-ne p1, v10, :cond_3

    const-string/jumbo v10, "@type"

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 431
    :cond_3
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lc8/RJb;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 434
    .end local v7    # "map":Ljava/util/Map;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 435
    instance-of v10, p0, Ljava/util/Collection;

    if-eqz v10, :cond_6

    move-object v2, p0

    .line 437
    check-cast v2, Ljava/util/Collection;

    .line 438
    .local v2, "collection":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 439
    .local v5, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 440
    .local v0, "array":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 441
    .local v6, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v6, v11, p2}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v9

    .line 442
    .local v9, "value":Ljava/lang/Object;
    invoke-static {v0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 443
    add-int/lit8 v5, v5, 0x1

    .line 444
    goto :goto_1

    .end local v6    # "item":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    move-object p0, v0

    .line 446
    goto :goto_0

    .line 449
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v5    # "index":I
    :cond_6
    const-class v10, [B

    if-ne p1, v10, :cond_7

    .line 450
    invoke-static {p0}, Lc8/RJb;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    .line 454
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 458
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_8

    const-class v10, Ljava/lang/Boolean;

    if-ne p1, v10, :cond_9

    .line 459
    :cond_8
    invoke-static {p0}, Lc8/RJb;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    .line 462
    :cond_9
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_a

    const-class v10, Ljava/lang/Byte;

    if-ne p1, v10, :cond_b

    .line 463
    :cond_a
    invoke-static {p0}, Lc8/RJb;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 466
    :cond_b
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_c

    const-class v10, Ljava/lang/Character;

    if-ne p1, v10, :cond_d

    .line 468
    :cond_c
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_d

    move-object v8, p0

    .line 469
    check-cast v8, Ljava/lang/String;

    .line 470
    .local v8, "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 471
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    .line 476
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_d
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_e

    const-class v10, Ljava/lang/Short;

    if-ne p1, v10, :cond_f

    .line 477
    :cond_e
    invoke-static {p0}, Lc8/RJb;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    .line 480
    :cond_f
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_10

    const-class v10, Ljava/lang/Integer;

    if-ne p1, v10, :cond_11

    .line 481
    :cond_10
    invoke-static {p0}, Lc8/RJb;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 484
    :cond_11
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_12

    const-class v10, Ljava/lang/Long;

    if-ne p1, v10, :cond_13

    .line 485
    :cond_12
    invoke-static {p0}, Lc8/RJb;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    .line 488
    :cond_13
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_14

    const-class v10, Ljava/lang/Float;

    if-ne p1, v10, :cond_15

    .line 489
    :cond_14
    invoke-static {p0}, Lc8/RJb;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    .line 492
    :cond_15
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_16

    const-class v10, Ljava/lang/Double;

    if-ne p1, v10, :cond_17

    .line 493
    :cond_16
    invoke-static {p0}, Lc8/RJb;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    .line 496
    :cond_17
    const-class v10, Ljava/lang/String;

    if-ne p1, v10, :cond_18

    .line 497
    invoke-static {p0}, Lc8/RJb;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 500
    :cond_18
    const-class v10, Ljava/math/BigDecimal;

    if-ne p1, v10, :cond_19

    .line 501
    invoke-static {p0}, Lc8/RJb;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    .line 504
    :cond_19
    const-class v10, Ljava/math/BigInteger;

    if-ne p1, v10, :cond_1a

    .line 505
    invoke-static {p0}, Lc8/RJb;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 508
    :cond_1a
    const-class v10, Ljava/util/Date;

    if-ne p1, v10, :cond_1b

    .line 509
    invoke-static {p0}, Lc8/RJb;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 512
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 513
    invoke-static {p0, p1, p2}, Lc8/RJb;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 516
    :cond_1c
    const-class v10, Ljava/util/Calendar;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 517
    invoke-static {p0}, Lc8/RJb;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    .line 519
    .local v3, "date":Ljava/util/Date;
    const-class v10, Ljava/util/Calendar;

    if-ne p1, v10, :cond_1d

    .line 520
    sget-object v10, Lc8/AIb;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v11, Lc8/AIb;->defaultLocale:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 528
    .local v1, "calendar":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v1

    .line 529
    goto/16 :goto_0

    .line 523
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_1d
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "calendar":Ljava/util/Calendar;
    goto :goto_2

    .line 524
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v4

    .line 525
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 532
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1e
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_21

    move-object v8, p0

    .line 533
    check-cast v8, Ljava/lang/String;

    .line 534
    .restart local v8    # "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1f

    const-string/jumbo v10, "null"

    .line 535
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    :cond_1f
    move-object p0, v0

    .line 536
    goto/16 :goto_0

    .line 539
    :cond_20
    const-class v10, Ljava/util/Currency;

    if-ne p1, v10, :cond_21

    .line 540
    invoke-static {v8}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    goto/16 :goto_0

    .line 544
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_21
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lc8/XIb;)Ljava/lang/Object;
    .locals 18
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lc8/XIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lc8/XIb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 604
    .local v11, "rawTye":Ljava/lang/reflect/Type;
    const-class v15, Ljava/util/Set;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/HashSet;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/TreeSet;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/List;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/ArrayList;

    if-ne v11, v15, :cond_4

    .line 609
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v7, v15, v16

    .line 611
    .local v7, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/Iterable;

    if-eqz v15, :cond_4

    .line 613
    const-class v15, Ljava/util/Set;

    if-eq v11, v15, :cond_1

    const-class v15, Ljava/util/HashSet;

    if-ne v11, v15, :cond_2

    .line 614
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 621
    .local v3, "collection":Ljava/util/Collection;
    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 622
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 623
    .local v6, "item":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 615
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "item":Ljava/lang/Object;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    const-class v15, Ljava/util/TreeSet;

    if-ne v11, v15, :cond_3

    .line 616
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 618
    .end local v3    # "collection":Ljava/util/Collection;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 630
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v7    # "itemType":Ljava/lang/reflect/Type;
    :cond_4
    const-class v15, Ljava/util/Map;

    if-eq v11, v15, :cond_5

    const-class v15, Ljava/util/HashMap;

    if-ne v11, v15, :cond_8

    .line 631
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v9, v15, v16

    .line 632
    .local v9, "keyType":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v14, v15, v16

    .line 634
    .local v14, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/util/Map;

    if-eqz v15, :cond_8

    .line 635
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 637
    .local v10, "map":Ljava/util/Map;
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 638
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v8

    .line 639
    .local v8, "key":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v14, v1}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v13

    .line 641
    .local v13, "value":Ljava/lang/Object;
    invoke-interface {v10, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "key":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_6
    move-object v3, v10

    .line 659
    .end local v9    # "keyType":Ljava/lang/reflect/Type;
    .end local v10    # "map":Ljava/util/Map;
    .end local v14    # "valueType":Ljava/lang/reflect/Type;
    :cond_7
    :goto_3
    return-object v3

    .line 648
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/String;

    if-eqz v15, :cond_a

    move-object/from16 v12, p0

    .line 649
    check-cast v12, Ljava/lang/String;

    .line 650
    .local v12, "strVal":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_9

    const-string/jumbo v15, "null"

    .line 651
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 652
    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    .line 656
    .end local v12    # "strVal":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    array-length v15, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 657
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v2, v15, v16

    .line 658
    .local v2, "argType":Ljava/lang/reflect/Type;
    instance-of v15, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v15, :cond_b

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v11, v1}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 663
    .end local v2    # "argType":Ljava/lang/reflect/Type;
    :cond_b
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "can not cast to : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lc8/XIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lc8/XIb;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 573
    if-nez p0, :cond_1

    move-object p0, v1

    .line 594
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 577
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 578
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 581
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 582
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lc8/XIb;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 585
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 586
    check-cast v0, Ljava/lang/String;

    .line 587
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "null"

    .line 588
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 589
    goto :goto_0

    .line 593
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_5
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    .line 597
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 150
    if-nez p0, :cond_0

    move-object p0, v1

    .line 168
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 154
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 155
    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    .line 158
    :cond_1
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 159
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v1

    goto :goto_0

    .line 162
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "null"

    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p0, v1

    .line 165
    goto :goto_0

    .line 168
    :cond_4
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 172
    if-nez p0, :cond_0

    move-object p0, v1

    .line 190
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 176
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 177
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    .line 180
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 181
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 184
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "null"

    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 187
    goto :goto_0

    .line 190
    :cond_5
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 371
    if-nez p0, :cond_0

    move-object p0, v2

    .line 396
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 375
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 376
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 379
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 380
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 383
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v0, p0

    .line 384
    check-cast v0, Ljava/lang/String;

    .line 385
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "null"

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object p0, v2

    .line 387
    goto :goto_0

    .line 390
    :cond_5
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "1"

    .line 391
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 392
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 394
    :cond_7
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "0"

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 396
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 400
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 95
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 84
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 85
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 88
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 98
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToBytes(Ljava/lang/Object;)[B
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 359
    instance-of v1, p0, [B

    if-eqz v1, :cond_0

    .line 360
    check-cast p0, [B

    .line 365
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 363
    .end local v0    # "string":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 364
    check-cast v0, Ljava/lang/String;

    .line 365
    .restart local v0    # "string":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lc8/PIb;->decodeFast(Ljava/lang/String;II)[B

    move-result-object p0

    goto :goto_0

    .line 367
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p0, :cond_0

    move-object p0, v1

    .line 121
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 106
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 107
    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    .line 110
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 111
    check-cast v0, Ljava/lang/String;

    .line 113
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 118
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 124
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 238
    if-nez p0, :cond_0

    move-object p0, v6

    .line 292
    .end local p0    # "value":Ljava/lang/Object;
    .local v2, "longValue":J
    :goto_0
    return-object p0

    .line 242
    .end local v2    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, p0, Ljava/util/Calendar;

    if-eqz v5, :cond_1

    .line 243
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 246
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, p0, Ljava/util/Date;

    if-eqz v5, :cond_2

    .line 247
    check-cast p0, Ljava/util/Date;

    goto :goto_0

    .line 250
    :cond_2
    const-wide/16 v2, -0x1

    .line 252
    .restart local v2    # "longValue":J
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_3

    move-object v5, p0

    .line 253
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 256
    :cond_3
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object v4, p0

    .line 257
    check-cast v4, Ljava/lang/String;

    .line 259
    .local v4, "strVal":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    .line 261
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Lc8/AIb;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 262
    sget-object v1, Lc8/AIb;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 271
    .local v1, "format":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v5, Lc8/AIb;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 272
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v5, Lc8/AIb;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 274
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 263
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "format":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 264
    const-string/jumbo v1, "yyyy-MM-dd"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 265
    .end local v1    # "format":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 266
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 268
    .end local v1    # "format":Ljava/lang/String;
    :cond_6
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 276
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not cast to Date, value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "format":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "null"

    .line 281
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move-object p0, v6

    .line 282
    goto/16 :goto_0

    .line 285
    :cond_9
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 288
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_a
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_b

    .line 289
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not cast to Date, value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_b
    new-instance p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static final castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p0, :cond_1

    .line 231
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 220
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 221
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 224
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 227
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 234
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to double, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lc8/XIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/XIb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 551
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 552
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 553
    const/4 v5, 0x0

    .line 561
    .end local v2    # "name":Ljava/lang/String;
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 555
    .restart local v2    # "name":Ljava/lang/String;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    goto :goto_0

    .line 557
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 558
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 559
    .local v3, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 560
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 561
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    .end local v3    # "ordinal":I
    .end local v4    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 568
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 194
    if-nez p0, :cond_1

    .line 209
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 198
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 199
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 202
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 212
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to float, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 333
    if-nez p0, :cond_0

    move-object p0, v1

    .line 352
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 337
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 338
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 341
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 342
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 345
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 346
    check-cast v0, Ljava/lang/String;

    .line 347
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "null"

    .line 348
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p0, v1

    .line 349
    goto :goto_0

    .line 352
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 355
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lc8/XIb;->global:Lc8/XIb;

    invoke-static {p0, p1, v0}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;
    .locals 19
    .param p2, "config"    # Lc8/XIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/XIb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v16, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 670
    const-string/jumbo v16, "className"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 671
    .local v3, "declaringClass":Ljava/lang/String;
    const-string/jumbo v16, "methodName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 672
    .local v13, "methodName":Ljava/lang/String;
    const-string/jumbo v16, "fileName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 675
    .local v7, "fileName":Ljava/lang/String;
    const-string/jumbo v16, "lineNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    .line 676
    .local v15, "value":Ljava/lang/Number;
    if-nez v15, :cond_0

    .line 677
    const/4 v11, 0x0

    .line 683
    .local v11, "lineNumber":I
    :goto_0
    new-instance v16, Ljava/lang/StackTraceElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v13, v7, v11}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 744
    .end local v3    # "declaringClass":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v11    # "lineNumber":I
    .end local v13    # "methodName":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/Number;
    :goto_1
    return-object v16

    .line 679
    .restart local v3    # "declaringClass":Ljava/lang/String;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v13    # "methodName":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/Number;
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v11

    .restart local v11    # "lineNumber":I
    goto :goto_0

    .line 687
    .end local v3    # "declaringClass":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v11    # "lineNumber":I
    .end local v13    # "methodName":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/Number;
    :cond_1
    const-string/jumbo v16, "@type"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 688
    .local v8, "iClassObject":Ljava/lang/Object;
    instance-of v0, v8, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 689
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 691
    .local v2, "className":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lc8/RJb;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 693
    .local v12, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v12, :cond_2

    .line 694
    new-instance v16, Ljava/lang/ClassNotFoundException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " not found"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v2    # "className":Ljava/lang/String;
    .end local v8    # "iClassObject":Ljava/lang/Object;
    .end local v12    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    .line 746
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 697
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v8    # "iClassObject":Ljava/lang/Object;
    .restart local v12    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v12, v1}, Lc8/RJb;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v16

    goto :goto_1

    .line 703
    .end local v2    # "className":Ljava/lang/String;
    .end local v12    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 706
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 707
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v14, v0

    .line 712
    .local v14, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    if-nez p2, :cond_4

    .line 713
    invoke-static {}, Lc8/XIb;->getGlobalInstance()Lc8/XIb;

    move-result-object p2

    .line 716
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v4

    .line 717
    .local v4, "deserializer":Lc8/hJb;
    if-eqz v4, :cond_6

    .line 718
    invoke-static {v14}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 719
    .local v10, "json":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_1

    .line 709
    .end local v4    # "deserializer":Lc8/hJb;
    .end local v10    # "json":Ljava/lang/String;
    .end local v14    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    new-instance v14, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v14    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 722
    .restart local v4    # "deserializer":Lc8/hJb;
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v14}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_1

    .line 726
    .end local v4    # "deserializer":Lc8/hJb;
    .end local v14    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    const-class v16, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 727
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 730
    :cond_8
    if-nez p2, :cond_9

    .line 731
    sget-object p2, Lc8/XIb;->global:Lc8/XIb;

    .line 734
    :cond_9
    const/4 v9, 0x0

    .line 735
    .local v9, "javaBeanDeser":Lc8/RIb;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v5

    .line 736
    .local v5, "deserizer":Lc8/hJb;
    instance-of v0, v5, Lc8/RIb;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 737
    move-object v0, v5

    check-cast v0, Lc8/RIb;

    move-object v9, v0

    .line 740
    :cond_a
    if-nez v9, :cond_b

    .line 741
    new-instance v16, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v17, "can not get javaBeanDeserializer"

    invoke-direct/range {v16 .. v17}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 744
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lc8/RIb;->createInstance(Ljava/util/Map;Lc8/XIb;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto/16 :goto_1
.end method

.method public static final castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 296
    if-nez p0, :cond_1

    .line 325
    .local v2, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 300
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 301
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 304
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v2, p0

    .line 305
    check-cast v2, Ljava/lang/String;

    .line 306
    .restart local v2    # "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "null"

    .line 307
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 312
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 317
    :catch_0
    move-exception v3

    new-instance v1, Lc8/PIb;

    invoke-direct {v1, v2}, Lc8/PIb;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "dateParser":Lc8/PIb;
    const/4 v0, 0x0

    .line 319
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lc8/PIb;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    iget-object v0, v1, Lc8/PIb;->calendar:Ljava/util/Calendar;

    .line 322
    :cond_3
    invoke-virtual {v1}, Lc8/PIb;->close()V

    .line 324
    if-eqz v0, :cond_4

    .line 325
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 329
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateParser":Lc8/PIb;
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can not cast to long, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 128
    if-nez p0, :cond_1

    .line 143
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 132
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 133
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 136
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 137
    check-cast v0, Ljava/lang/String;

    .line 138
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 146
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not cast to short, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static computeGetters(Ljava/lang/Class;IZLc8/KIb;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 43
    .param p1, "modifiers"    # I
    .param p2, "fieldOnly"    # Z
    .param p3, "jsonType"    # Lc8/KIb;
    .param p5, "sorted"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IZ",
            "Lc8/KIb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/NJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v37, Ljava/util/LinkedHashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/LinkedHashMap;-><init>()V

    .line 859
    .local v37, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 861
    .local v28, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v32

    .line 862
    .local v32, "declaredFields":[Ljava/lang/reflect/Field;
    if-nez p2, :cond_1a

    .line 863
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v39, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v30, p0

    .local v30, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v30, :cond_2

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_2

    .line 866
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v33

    .line 867
    .local v33, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v33

    array-length v8, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v6, v33, v4

    .line 868
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v41

    .line 870
    .local v41, "modifier":I
    and-int/lit8 v9, v41, 0x8

    if-nez v9, :cond_0

    and-int/lit8 v9, v41, 0x2

    if-nez v9, :cond_0

    move/from16 v0, v41

    and-int/lit16 v9, v0, 0x100

    if-nez v9, :cond_0

    and-int/lit8 v9, v41, 0x4

    if-nez v9, :cond_0

    .line 877
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 878
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 879
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v14, Ljava/lang/ClassLoader;

    if-eq v9, v14, :cond_0

    .line 880
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v14, Ljava/lang/Object;

    if-eq v9, v14, :cond_0

    .line 885
    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 865
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v41    # "modifier":I
    :cond_1
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v30

    goto :goto_0

    .line 890
    .end local v33    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_2
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 891
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v40

    .line 892
    .local v40, "methodName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ordinal":I
    const/4 v11, 0x0

    .line 894
    .local v11, "serialzeFeatures":I
    const-string/jumbo v4, "getMetaClass"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 895
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "groovy.lang.MetaClass"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 899
    :cond_4
    if-eqz p6, :cond_7

    const-class v4, Lc8/JIb;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lc8/JIb;

    move-object v12, v4

    .line 901
    .local v12, "annotation":Lc8/JIb;
    :goto_3
    if-nez v12, :cond_5

    if-eqz p6, :cond_5

    .line 902
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lc8/RJb;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lc8/JIb;

    move-result-object v12

    .line 905
    :cond_5
    if-eqz v12, :cond_8

    .line 906
    invoke-interface {v12}, Lc8/JIb;->serialize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 910
    invoke-interface {v12}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 911
    invoke-interface {v12}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 913
    invoke-interface {v12}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 914
    invoke-interface {v12}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, "propertyName":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 917
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 918
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 923
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 924
    new-instance v4, Lc8/NJb;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v14}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v37

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 899
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v12    # "annotation":Lc8/JIb;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 930
    .restart local v12    # "annotation":Lc8/JIb;
    :cond_8
    const-string/jumbo v4, "get"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 931
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x4

    if-lt v4, v8, :cond_3

    const-string/jumbo v4, "getClass"

    .line 932
    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 937
    const/4 v4, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v27

    .line 940
    .local v27, "c3":C
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 941
    sget-boolean v4, Lc8/RJb;->compatibleWithJavaBean:Z

    if-eqz v4, :cond_11

    .line 942
    const/4 v4, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/RJb;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 956
    .restart local v5    # "propertyName":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lc8/RJb;->isJSONTypeIgnore(Ljava/lang/Class;Lc8/KIb;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-static {v0, v5, v1, v2}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 961
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    .line 962
    .local v13, "fieldAnnotation":Lc8/JIb;
    if-eqz v7, :cond_9

    .line 963
    if-eqz p6, :cond_15

    const-class v4, Lc8/JIb;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lc8/JIb;

    move-object v13, v4

    .line 965
    :goto_5
    if-eqz v13, :cond_9

    .line 966
    invoke-interface {v13}, Lc8/JIb;->serialize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 970
    invoke-interface {v13}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 971
    invoke-interface {v13}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 973
    invoke-interface {v13}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 974
    invoke-interface {v13}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    .line 976
    if-eqz p4, :cond_9

    .line 977
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 978
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 986
    :cond_9
    if-eqz p8, :cond_a

    .line 987
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 990
    :cond_a
    if-eqz p4, :cond_b

    .line 991
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 992
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 997
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 998
    new-instance v4, Lc8/NJb;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v14, p7

    invoke-direct/range {v4 .. v14}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v37

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lc8/JIb;
    .end local v27    # "c3":C
    :cond_c
    const-string/jumbo v4, "is"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1004
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x3

    if-lt v4, v8, :cond_3

    .line 1008
    const/4 v4, 0x2

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v26

    .line 1011
    .local v26, "c2":C
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1012
    sget-boolean v4, Lc8/RJb;->compatibleWithJavaBean:Z

    if-eqz v4, :cond_16

    .line 1013
    const/4 v4, 0x2

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/RJb;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1025
    .restart local v5    # "propertyName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lc8/RJb;->isJSONTypeIgnore(Ljava/lang/Class;Lc8/KIb;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1029
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-static {v0, v5, v1, v2}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1031
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    if-nez v7, :cond_d

    .line 1032
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v32

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1035
    :cond_d
    const/4 v13, 0x0

    .line 1036
    .restart local v13    # "fieldAnnotation":Lc8/JIb;
    if-eqz v7, :cond_e

    .line 1037
    if-eqz p6, :cond_19

    const-class v4, Lc8/JIb;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lc8/JIb;

    move-object v13, v4

    .line 1039
    :goto_7
    if-eqz v13, :cond_e

    .line 1040
    invoke-interface {v13}, Lc8/JIb;->serialize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1044
    invoke-interface {v13}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 1045
    invoke-interface {v13}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1047
    invoke-interface {v13}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    .line 1048
    invoke-interface {v13}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    .line 1050
    if-eqz p4, :cond_e

    .line 1051
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1052
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1060
    :cond_e
    if-eqz p8, :cond_f

    .line 1061
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1064
    :cond_f
    if-eqz p4, :cond_10

    .line 1065
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1066
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1071
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v7, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1072
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1073
    new-instance v4, Lc8/NJb;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v14, p7

    invoke-direct/range {v4 .. v14}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v37

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 944
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lc8/JIb;
    .end local v26    # "c2":C
    .restart local v27    # "c3":C
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x4

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_4

    .line 946
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_12
    const/16 v4, 0x5f

    move/from16 v0, v27

    if-ne v0, v4, :cond_13

    .line 947
    const/4 v4, 0x4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_4

    .line 948
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_13
    const/16 v4, 0x66

    move/from16 v0, v27

    if-ne v0, v4, :cond_14

    .line 949
    const/4 v4, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_4

    .line 950
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x5

    if-lt v4, v8, :cond_3

    const/4 v4, 0x4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 951
    const/4 v4, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/RJb;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_4

    .line 963
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "fieldAnnotation":Lc8/JIb;
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1015
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lc8/JIb;
    .end local v27    # "c3":C
    .restart local v26    # "c2":C
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1017
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_17
    const/16 v4, 0x5f

    move/from16 v0, v26

    if-ne v0, v4, :cond_18

    .line 1018
    const/4 v4, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1019
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_18
    const/16 v4, 0x66

    move/from16 v0, v26

    if-ne v0, v4, :cond_3

    .line 1020
    const/4 v4, 0x2

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1037
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "fieldAnnotation":Lc8/JIb;
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 1082
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v12    # "annotation":Lc8/JIb;
    .end local v13    # "fieldAnnotation":Lc8/JIb;
    .end local v26    # "c2":C
    .end local v30    # "cls":Ljava/lang/Class;
    .end local v39    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v40    # "methodName":Ljava/lang/String;
    :cond_1a
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    array-length v4, v0

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1083
    .local v29, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v32

    array-length v8, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v8, :cond_1c

    aget-object v34, v32, v4

    .line 1084
    .local v34, "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_1b

    .line 1088
    invoke-virtual/range {v34 .. v34}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "this$0"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 1092
    invoke-virtual/range {v34 .. v34}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1b

    .line 1093
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1097
    .end local v34    # "f":Ljava/lang/reflect/Field;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v25

    .local v25, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz v25, :cond_1f

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_1f

    .line 1098
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v9, :cond_1e

    aget-object v34, v8, v4

    .line 1099
    .restart local v34    # "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x8

    if-nez v14, :cond_1d

    .line 1103
    invoke-virtual/range {v34 .. v34}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1d

    .line 1104
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1097
    .end local v34    # "f":Ljava/lang/reflect/Field;
    :cond_1e
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v25

    goto :goto_9

    .line 1110
    :cond_1f
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_20
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 1111
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    if-eqz p6, :cond_24

    const-class v4, Lc8/JIb;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lc8/JIb;

    move-object v13, v4

    .line 1113
    .restart local v13    # "fieldAnnotation":Lc8/JIb;
    :goto_c
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 1114
    .restart local v11    # "serialzeFeatures":I
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1115
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v13, :cond_21

    .line 1116
    invoke-interface {v13}, Lc8/JIb;->serialize()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1120
    invoke-interface {v13}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 1121
    invoke-interface {v13}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1123
    invoke-interface {v13}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_21

    .line 1124
    invoke-interface {v13}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    .line 1128
    :cond_21
    if-eqz p4, :cond_22

    .line 1129
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1130
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_20

    .line 1135
    :cond_22
    if-eqz p8, :cond_23

    .line 1136
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1139
    :cond_23
    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1140
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v7, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1141
    new-instance v14, Lc8/NJb;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v23, v13

    move/from16 v24, p7

    invoke-direct/range {v14 .. v24}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v37

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1111
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v13    # "fieldAnnotation":Lc8/JIb;
    :cond_24
    const/4 v13, 0x0

    goto :goto_c

    .line 1155
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :cond_25
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v36, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/16 v31, 0x0

    .line 1158
    .local v31, "containsAll":Z
    const/16 v42, 0x0

    .line 1160
    .local v42, "orders":[Ljava/lang/String;
    if-eqz p3, :cond_26

    .line 1161
    invoke-interface/range {p3 .. p3}, Lc8/KIb;->orders()[Ljava/lang/String;

    move-result-object v42

    .line 1163
    if-eqz v42, :cond_28

    move-object/from16 v0, v42

    array-length v4, v0

    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v4, v8, :cond_28

    .line 1164
    const/16 v31, 0x1

    .line 1165
    move-object/from16 v0, v42

    array-length v8, v0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v8, :cond_26

    aget-object v38, v42, v4

    .line 1166
    .local v38, "item":Ljava/lang/String;
    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 1167
    const/16 v31, 0x0

    .line 1176
    .end local v38    # "item":Ljava/lang/String;
    :cond_26
    :goto_e
    if-eqz v31, :cond_29

    .line 1177
    move-object/from16 v0, v42

    array-length v8, v0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v8, :cond_2b

    aget-object v38, v42, v4

    .line 1178
    .restart local v38    # "item":Ljava/lang/String;
    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lc8/NJb;

    .line 1179
    .local v35, "fieldInfo":Lc8/NJb;
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1165
    .end local v35    # "fieldInfo":Lc8/NJb;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1172
    .end local v38    # "item":Ljava/lang/String;
    :cond_28
    const/16 v31, 0x0

    goto :goto_e

    .line 1182
    :cond_29
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lc8/NJb;

    .line 1183
    .restart local v35    # "fieldInfo":Lc8/NJb;
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1186
    .end local v35    # "fieldInfo":Lc8/NJb;
    :cond_2a
    if-eqz p5, :cond_2b

    .line 1187
    invoke-static/range {v36 .. v36}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1191
    :cond_2b
    return-object v36
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1318
    if-eqz p0, :cond_0

    .line 1319
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1321
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1326
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1327
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1328
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1303
    check-cast p0, Ljava/lang/Class;

    .line 1314
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1306
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1307
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1310
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    .line 1311
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object p0, v0

    goto :goto_0

    .line 1314
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x0

    .line 1405
    const/4 v2, 0x0

    .line 1407
    .local v2, "itemType":Ljava/lang/reflect/Type;
    instance-of v6, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    .line 1408
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v0, v6, v8

    .line 1410
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v6, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 1411
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 1412
    .local v5, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1413
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1414
    aget-object v0, v4, v8

    .line 1418
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_0
    move-object v2, v0

    .line 1425
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 1426
    const-class v2, Ljava/lang/Object;

    .line 1429
    :cond_2
    return-object v2

    .line 1419
    .restart local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v6, p0, Ljava/lang/Class;

    if-eqz v6, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    .line 1420
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1421
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1422
    .local v3, "superClass":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lc8/RJb;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    const/4 v4, 0x1

    .line 1363
    invoke-static {p0, p1, p2, p3}, Lc8/RJb;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1364
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lc8/RJb;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1368
    :cond_0
    if-nez v0, :cond_1

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "m_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lc8/RJb;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1372
    :cond_1
    if-nez v0, :cond_2

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    .local v1, "mName":Ljava/lang/String;
    invoke-static {p0, v1, p2, p3}, Lc8/RJb;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1377
    .end local v1    # "mName":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    const/4 v3, 0x0

    .line 1381
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p2, v4

    .line 1382
    .local v0, "item":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1401
    .end local v0    # "item":Ljava/lang/reflect/Field;
    :goto_1
    return-object v0

    .line 1381
    .restart local v0    # "item":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1387
    .end local v0    # "item":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1389
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    const-class v4, Ljava/lang/Object;

    if-ne v1, v4, :cond_3

    :cond_2
    move-object v0, v3

    .line 1390
    goto :goto_1

    .line 1393
    :cond_3
    if-eqz p3, :cond_5

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Field;

    move-object v2, v3

    .line 1394
    .local v2, "superClassFields":[Ljava/lang/reflect/Field;
    :goto_2
    if-nez v2, :cond_4

    .line 1395
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1396
    if-eqz p3, :cond_4

    .line 1397
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    :cond_4
    invoke-static {v1, p1, v2, p3}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_1

    .end local v2    # "superClassFields":[Ljava/lang/reflect/Field;
    :cond_5
    move-object v2, v3

    .line 1393
    goto :goto_2
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1296
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .line 1297
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lc8/RJb;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lc8/JIb;
    .locals 20
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lc8/JIb;"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v14

    array-length v15, v14

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v4, v14, v13

    .line 1196
    .local v4, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    aget-object v5, v16, v12

    .line 1197
    .local v5, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1201
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1202
    .local v6, "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 1203
    .local v9, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1207
    const/4 v8, 0x1

    .line 1208
    .local v8, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_0

    .line 1209
    aget-object v18, v6, v3

    aget-object v19, v9, v3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1210
    const/4 v8, 0x0

    .line 1215
    :cond_0
    if-eqz v8, :cond_3

    .line 1219
    const-class v18, Lc8/JIb;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/JIb;

    .line 1220
    .local v2, "annotation":Lc8/JIb;
    if-eqz v2, :cond_3

    .line 1261
    .end local v2    # "annotation":Lc8/JIb;
    .end local v3    # "i":I
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_3
    return-object v2

    .line 1208
    .restart local v3    # "i":I
    .restart local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "match":Z
    .restart local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1196
    .end local v3    # "i":I
    .end local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1195
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    :cond_4
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 1226
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 1227
    .local v10, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_6

    .line 1228
    const/4 v2, 0x0

    goto :goto_3

    .line 1231
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Class;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1232
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 1234
    .local v11, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_a

    aget-object v5, v13, v12

    .line 1235
    .restart local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1236
    .local v7, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v15, v7

    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1239
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1242
    const/4 v8, 0x1

    .line 1243
    .restart local v8    # "match":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    array-length v15, v11

    if-ge v3, v15, :cond_7

    .line 1244
    aget-object v15, v7, v3

    aget-object v16, v11, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 1245
    const/4 v8, 0x0

    .line 1250
    :cond_7
    if-eqz v8, :cond_8

    .line 1254
    const-class v15, Lc8/JIb;

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/JIb;

    .line 1255
    .restart local v2    # "annotation":Lc8/JIb;
    if-nez v2, :cond_1

    .line 1234
    .end local v2    # "annotation":Lc8/JIb;
    .end local v3    # "i":I
    .end local v8    # "match":Z
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1243
    .restart local v3    # "i":I
    .restart local v8    # "match":Z
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1261
    .end local v3    # "i":I
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v11    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1282
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 1292
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v0, "superType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v1

    .line 1286
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_3

    .line 1287
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1288
    .restart local v0    # "superType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    .line 1289
    invoke-static {v0}, Lc8/RJb;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 1288
    goto :goto_0

    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    move v1, v2

    .line 1292
    goto :goto_0
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Lc8/KIb;Ljava/lang/String;)Z
    .locals 8
    .param p1, "jsonType"    # Lc8/KIb;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lc8/KIb;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1265
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lc8/KIb;->ignores()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1266
    invoke-interface {p1}, Lc8/KIb;->ignores()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v0, v5, v2

    .line 1267
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v3

    .line 1276
    .end local v0    # "item":Ljava/lang/String;
    :goto_1
    return v2

    .line 1266
    .restart local v0    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1274
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    const-class v2, Lc8/KIb;

    .line 1277
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/KIb;

    .line 1276
    invoke-static {v1, v2, p2}, Lc8/RJb;->isJSONTypeIgnore(Ljava/lang/Class;Lc8/KIb;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 1274
    goto :goto_1
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 783
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 784
    :cond_0
    const/4 v0, 0x0

    .line 846
    :cond_1
    :goto_0
    return-object v0

    .line 787
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-lt v5, v6, :cond_3

    .line 788
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "className too long. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 791
    :cond_3
    sget-object v5, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 793
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 797
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_4

    .line 798
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lc8/RJb;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 799
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 802
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const-string/jumbo v5, "L"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 803
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "newClassName":Ljava/lang/String;
    invoke-static {v4, p1}, Lc8/RJb;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 808
    .end local v4    # "newClassName":Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_6

    .line 809
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 811
    sget-object v5, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v3

    .line 816
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 823
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_7

    if-eq v2, p1, :cond_7

    .line 824
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 826
    sget-object v5, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 830
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v3

    .line 831
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 836
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    invoke-static {p0}, Lc8/RJb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 838
    sget-object v5, Lc8/RJb;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 841
    :catch_2
    move-exception v3

    .line 842
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z
    .locals 5
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "classMofifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Member;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1332
    if-eqz p1, :cond_0

    sget-boolean v4, Lc8/RJb;->setAccessibleEnable:Z

    if-nez v4, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return v2

    .line 1338
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1340
    .local v1, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    const-class v4, Ljava/lang/Object;

    if-ne v1, v4, :cond_3

    .line 1341
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_0

    :cond_3
    move-object v0, p1

    .line 1347
    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    .line 1350
    .local v0, "obj":Ljava/lang/reflect/AccessibleObject;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1351
    goto :goto_0

    .line 1353
    :catch_0
    move-exception v3

    sput-boolean v2, Lc8/RJb;->setAccessibleEnable:Z

    goto :goto_0
.end method
