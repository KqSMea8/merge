.class public final Lc8/Hjd;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lc8/ukd;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Wjd;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lc8/zjd;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Wjd;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lc8/Ijd",
            "<*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lc8/ukd;->DEFAULT:Lc8/ukd;

    iput-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 80
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lc8/Hjd;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lc8/Hjd;->fieldNamingPolicy:Lc8/zjd;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Hjd;->instanceCreators:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Hjd;->factories:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Hjd;->hierarchyFactories:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lc8/Hjd;->serializeNulls:Z

    .line 89
    iput v2, p0, Lc8/Hjd;->dateStyle:I

    .line 90
    iput v2, p0, Lc8/Hjd;->timeStyle:I

    .line 91
    iput-boolean v1, p0, Lc8/Hjd;->complexMapKeySerialization:Z

    .line 92
    iput-boolean v1, p0, Lc8/Hjd;->serializeSpecialFloatingPointValues:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hjd;->escapeHtmlChars:Z

    .line 94
    iput-boolean v1, p0, Lc8/Hjd;->prettyPrinting:Z

    .line 95
    iput-boolean v1, p0, Lc8/Hjd;->generateNonExecutableJson:Z

    .line 96
    iput-boolean v1, p0, Lc8/Hjd;->lenient:Z

    .line 105
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 6
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lc8/Wjd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    const/4 v5, 0x2

    .line 584
    if-eqz p1, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 585
    new-instance v0, Lc8/wjd;

    const-class v3, Ljava/util/Date;

    invoke-direct {v0, v3, p1}, Lc8/wjd;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 586
    .local v0, "dateTypeAdapter":Lc8/wjd;
    new-instance v2, Lc8/wjd;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v2, v3, p1}, Lc8/wjd;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 587
    .local v2, "timestampTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v1, Lc8/wjd;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v1, v3, p1}, Lc8/wjd;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 596
    .local v1, "javaSqlDateTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    :goto_0
    const-class v3, Ljava/util/Date;

    invoke-static {v3, v0}, Lc8/mmd;->newFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const-class v3, Ljava/sql/Timestamp;

    invoke-static {v3, v2}, Lc8/mmd;->newFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const-class v3, Ljava/sql/Date;

    invoke-static {v3, v1}, Lc8/mmd;->newFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v0    # "dateTypeAdapter":Lc8/wjd;
    .end local v1    # "javaSqlDateTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    .end local v2    # "timestampTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    :cond_0
    return-void

    .line 588
    :cond_1
    if-eq p2, v5, :cond_0

    if-eq p3, v5, :cond_0

    .line 589
    new-instance v0, Lc8/wjd;

    const-class v3, Ljava/util/Date;

    invoke-direct {v0, v3, p2, p3}, Lc8/wjd;-><init>(Ljava/lang/Class;II)V

    .line 590
    .restart local v0    # "dateTypeAdapter":Lc8/wjd;
    new-instance v2, Lc8/wjd;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v2, v3, p2, p3}, Lc8/wjd;-><init>(Ljava/lang/Class;II)V

    .line 591
    .restart local v2    # "timestampTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v1, Lc8/wjd;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v1, v3, p2, p3}, Lc8/wjd;-><init>(Ljava/lang/Class;II)V

    .restart local v1    # "javaSqlDateTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/sql/Date;>;"
    goto :goto_0
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lc8/xjd;)Lc8/Hjd;
    .locals 3
    .param p1, "strategy"    # Lc8/xjd;

    .prologue
    .line 350
    iget-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lc8/ukd;->withExclusionStrategy(Lc8/xjd;ZZ)Lc8/ukd;

    move-result-object v0

    iput-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 351
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lc8/xjd;)Lc8/Hjd;
    .locals 3
    .param p1, "strategy"    # Lc8/xjd;

    .prologue
    .line 333
    iget-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lc8/ukd;->withExclusionStrategy(Lc8/xjd;ZZ)Lc8/ukd;

    move-result-object v0

    iput-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 334
    return-object p0
.end method

.method public create()Lc8/Gjd;
    .locals 14

    .prologue
    .line 562
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, p0, Lc8/Hjd;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc8/Hjd;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .local v12, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    iget-object v0, p0, Lc8/Hjd;->factories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 566
    new-instance v13, Ljava/util/ArrayList;

    iget-object v0, p0, Lc8/Hjd;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 567
    .local v13, "hierarchyFactories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    invoke-static {v13}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 568
    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 570
    iget-object v0, p0, Lc8/Hjd;->datePattern:Ljava/lang/String;

    iget v1, p0, Lc8/Hjd;->dateStyle:I

    iget v2, p0, Lc8/Hjd;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v12}, Lc8/Hjd;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 572
    new-instance v0, Lc8/Gjd;

    iget-object v1, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    iget-object v2, p0, Lc8/Hjd;->fieldNamingPolicy:Lc8/zjd;

    iget-object v3, p0, Lc8/Hjd;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lc8/Hjd;->serializeNulls:Z

    iget-boolean v5, p0, Lc8/Hjd;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lc8/Hjd;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lc8/Hjd;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lc8/Hjd;->prettyPrinting:Z

    iget-boolean v9, p0, Lc8/Hjd;->lenient:Z

    iget-boolean v10, p0, Lc8/Hjd;->serializeSpecialFloatingPointValues:Z

    iget-object v11, p0, Lc8/Hjd;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v12}, Lc8/Gjd;-><init>(Lc8/ukd;Lc8/zjd;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public disableHtmlEscaping()Lc8/Hjd;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hjd;->escapeHtmlChars:Z

    .line 387
    return-object p0
.end method

.method public disableInnerClassSerialization()Lc8/Hjd;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    invoke-virtual {v0}, Lc8/ukd;->disableInnerClassSerialization()Lc8/ukd;

    move-result-object v0

    iput-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 261
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lc8/Hjd;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hjd;->complexMapKeySerialization:Z

    .line 250
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lc8/Hjd;
    .locals 1
    .param p1, "modifiers"    # [I

    .prologue
    .line 131
    iget-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    invoke-virtual {v0, p1}, Lc8/ukd;->withModifiers([I)Lc8/ukd;

    move-result-object v0

    iput-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 132
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lc8/Hjd;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    invoke-virtual {v0}, Lc8/ukd;->excludeFieldsWithoutExposeAnnotation()Lc8/ukd;

    move-result-object v0

    iput-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 157
    return-object p0
.end method

.method public generateNonExecutableJson()Lc8/Hjd;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hjd;->generateNonExecutableJson:Z

    .line 146
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lc8/Hjd;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "typeAdapter"    # Ljava/lang/Object;

    .prologue
    .line 472
    instance-of v1, p2, Lc8/Sjd;

    if-nez v1, :cond_0

    instance-of v1, p2, Lc8/Ljd;

    if-nez v1, :cond_0

    instance-of v1, p2, Lc8/Ijd;

    if-nez v1, :cond_0

    instance-of v1, p2, Lc8/Vjd;

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lc8/ckd;->checkArgument(Z)V

    .line 476
    instance-of v1, p2, Lc8/Ijd;

    if-eqz v1, :cond_1

    .line 477
    iget-object v2, p0, Lc8/Hjd;->instanceCreators:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lc8/Ijd;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_1
    instance-of v1, p2, Lc8/Sjd;

    if-nez v1, :cond_2

    instance-of v1, p2, Lc8/Ljd;

    if-eqz v1, :cond_3

    .line 480
    :cond_2
    invoke-static {p1}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v0

    .line 481
    .local v0, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    iget-object v1, p0, Lc8/Hjd;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lc8/xld;->newFactoryWithMatchRawType(Lc8/omd;Ljava/lang/Object;)Lc8/Wjd;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v0    # "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    :cond_3
    instance-of v1, p2, Lc8/Vjd;

    if-eqz v1, :cond_4

    .line 484
    iget-object v1, p0, Lc8/Hjd;->factories:Ljava/util/List;

    invoke-static {p1}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v2

    check-cast p2, Lc8/Vjd;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {v2, p2}, Lc8/mmd;->newFactory(Lc8/omd;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_4
    return-object p0

    .line 472
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerTypeAdapterFactory(Lc8/Wjd;)Lc8/Hjd;
    .locals 1
    .param p1, "factory"    # Lc8/Wjd;

    .prologue
    .line 498
    iget-object v0, p0, Lc8/Hjd;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lc8/Hjd;
    .locals 2
    .param p2, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lc8/Hjd;"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p2, Lc8/Sjd;

    if-nez v0, :cond_0

    instance-of v0, p2, Lc8/Ljd;

    if-nez v0, :cond_0

    instance-of v0, p2, Lc8/Vjd;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lc8/ckd;->checkArgument(Z)V

    .line 521
    instance-of v0, p2, Lc8/Ljd;

    if-nez v0, :cond_1

    instance-of v0, p2, Lc8/Sjd;

    if-eqz v0, :cond_2

    .line 522
    :cond_1
    iget-object v0, p0, Lc8/Hjd;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lc8/xld;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lc8/Wjd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_2
    instance-of v0, p2, Lc8/Vjd;

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lc8/Hjd;->factories:Ljava/util/List;

    check-cast p2, Lc8/Vjd;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {p1, p2}, Lc8/mmd;->newTypeHierarchyFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_3
    return-object p0

    .line 518
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeNulls()Lc8/Hjd;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hjd;->serializeNulls:Z

    .line 169
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lc8/Hjd;
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hjd;->serializeSpecialFloatingPointValues:Z

    .line 552
    return-object p0
.end method

.method public setDateFormat(I)Lc8/Hjd;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 427
    iput p1, p0, Lc8/Hjd;->dateStyle:I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Hjd;->datePattern:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public setDateFormat(II)Lc8/Hjd;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .prologue
    .line 448
    iput p1, p0, Lc8/Hjd;->dateStyle:I

    .line 449
    iput p2, p0, Lc8/Hjd;->timeStyle:I

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Hjd;->datePattern:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lc8/Hjd;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lc8/Hjd;->datePattern:Ljava/lang/String;

    .line 409
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lc8/xjd;)Lc8/Hjd;
    .locals 5
    .param p1, "strategies"    # [Lc8/xjd;

    .prologue
    const/4 v4, 0x1

    .line 314
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 315
    .local v0, "strategy":Lc8/xjd;
    iget-object v3, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    invoke-virtual {v3, v0, v4, v4}, Lc8/ukd;->withExclusionStrategy(Lc8/xjd;ZZ)Lc8/ukd;

    move-result-object v3

    iput-object v3, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "strategy":Lc8/xjd;
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lc8/Hjd;
    .locals 0
    .param p1, "namingConvention"    # Lcom/google/gson/FieldNamingPolicy;

    .prologue
    .line 286
    iput-object p1, p0, Lc8/Hjd;->fieldNamingPolicy:Lc8/zjd;

    .line 287
    return-object p0
.end method

.method public setFieldNamingStrategy(Lc8/zjd;)Lc8/Hjd;
    .locals 0
    .param p1, "fieldNamingStrategy"    # Lc8/zjd;

    .prologue
    .line 299
    iput-object p1, p0, Lc8/Hjd;->fieldNamingPolicy:Lc8/zjd;

    .line 300
    return-object p0
.end method

.method public setLenient()Lc8/Hjd;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hjd;->lenient:Z

    .line 375
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lc8/Hjd;
    .locals 0
    .param p1, "serializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;

    .prologue
    .line 273
    iput-object p1, p0, Lc8/Hjd;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 274
    return-object p0
.end method

.method public setPrettyPrinting()Lc8/Hjd;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hjd;->prettyPrinting:Z

    .line 362
    return-object p0
.end method

.method public setVersion(D)Lc8/Hjd;
    .locals 1
    .param p1, "ignoreVersionsAfter"    # D

    .prologue
    .line 115
    iget-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    invoke-virtual {v0, p1, p2}, Lc8/ukd;->withVersion(D)Lc8/ukd;

    move-result-object v0

    iput-object v0, p0, Lc8/Hjd;->excluder:Lc8/ukd;

    .line 116
    return-object p0
.end method
