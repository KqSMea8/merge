.class public Lc8/xYf;
.super Ljava/lang/Object;
.source "WXAttr.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2459d3c708082fb2L


# instance fields
.field private final attr:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBindingAttrs:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStatement:Lc8/xZf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "standardMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lc8/xYf;-><init>()V

    .line 75
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, p1}, Lc8/xYf;->filterBindingStatement(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 76
    return-void
.end method

.method private filterBindingStatement(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "attrs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 470
    :cond_0
    return-object p1

    .line 462
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 463
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 464
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 466
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lc8/xYf;->filterBindingStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private filterBindingStatement(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 477
    const-string/jumbo v6, "@componentProps"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    invoke-static {p2}, Lc8/wZf;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_0
    :goto_0
    return v4

    .line 481
    :cond_1
    sget-object v0, Lc8/wZf;->EXCLUDES_BINDING:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 482
    .local v1, "exclude":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    .end local v1    # "exclude":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lc8/wZf;->isBinding(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 487
    iget-object v4, p0, Lc8/xYf;->mBindingAttrs:Landroid/support/v4/util/ArrayMap;

    if-nez v4, :cond_3

    .line 488
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lc8/xYf;->mBindingAttrs:Landroid/support/v4/util/ArrayMap;

    .line 490
    :cond_3
    invoke-static {p2}, Lc8/wZf;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 491
    iget-object v4, p0, Lc8/xYf;->mBindingAttrs:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 492
    goto :goto_0

    .line 494
    :cond_4
    const-string/jumbo v6, "[[match]]"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 495
    iget-object v4, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    if-nez v4, :cond_5

    .line 496
    new-instance v4, Lc8/xZf;

    invoke-direct {v4}, Lc8/xZf;-><init>()V

    iput-object v4, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    .line 498
    :cond_5
    if-eqz p2, :cond_6

    .line 499
    iget-object v4, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/VZf;->parse(Ljava/lang/String;)Lc8/XZf;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Lc8/xZf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move v4, v5

    .line 501
    goto :goto_0

    .line 504
    :cond_7
    const-string/jumbo v6, "[[repeat]]"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    iget-object v6, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    if-nez v6, :cond_8

    .line 506
    new-instance v6, Lc8/xZf;

    invoke-direct {v6}, Lc8/xZf;-><init>()V

    iput-object v6, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    .line 508
    :cond_8
    invoke-static {p2}, Lc8/wZf;->vforBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 509
    if-eqz p2, :cond_0

    .line 510
    iget-object v4, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    invoke-virtual {v4, p1, p2}, Lc8/xZf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 511
    goto :goto_0
.end method

.method public static getPrefix(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 82
    :cond_1
    const-string/jumbo v2, "prefix"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "src":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSuffix(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 90
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 93
    :cond_1
    const-string/jumbo v2, "suffix"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "src":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getValue(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 106
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :cond_1
    const-string/jumbo v2, "value"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 111
    const-string/jumbo v2, "content"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 116
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public autoPlay()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 186
    const-string/jumbo v3, "autoPlay"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 196
    :goto_0
    return v2

    .line 192
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] autoPlay:"

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public canRecycled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 159
    const-string/jumbo v3, "recycle"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 168
    :goto_0
    return v2

    .line 164
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] recycle:"

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 367
    return-void
.end method

.method protected clone()Lc8/xYf;
    .locals 2

    .prologue
    .line 523
    new-instance v0, Lc8/xYf;

    invoke-direct {v0}, Lc8/xYf;-><init>()V

    .line 524
    .local v0, "wxAttr":Lc8/xYf;
    iget-object v1, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Lc8/xYf;->skipFilterPutAll(Ljava/util/Map;)V

    .line 525
    iget-object v1, p0, Lc8/xYf;->mBindingAttrs:Landroid/support/v4/util/ArrayMap;

    iput-object v1, v0, Lc8/xYf;->mBindingAttrs:Landroid/support/v4/util/ArrayMap;

    .line 526
    iget-object v1, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    iput-object v1, v0, Lc8/xYf;->mStatement:Lc8/xZf;

    .line 527
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lc8/xYf;->clone()Lc8/xYf;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 371
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 376
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 356
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 387
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBindingAttrs()Landroid/support/v4/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lc8/xYf;->mBindingAttrs:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 292
    const-string/jumbo v5, "columnCount"

    invoke-virtual {p0, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 293
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_1

    move v0, v4

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v5, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 299
    goto :goto_0

    .line 303
    :cond_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 304
    .local v0, "columnCount":I
    if-gtz v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 305
    .end local v0    # "columnCount":I
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "[WXAttr] getColumnCount:"

    invoke-static {v5, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 307
    goto :goto_0
.end method

.method public getColumnGap()F
    .locals 5

    .prologue
    const/high16 v0, 0x42000000    # 32.0f

    .line 313
    const-string/jumbo v4, "columnGap"

    invoke-virtual {p0, v4}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 314
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "normal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 325
    .local v0, "columnGap":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-gez v4, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 326
    .end local v0    # "columnGap":F
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXAttr] getColumnGap:"

    invoke-static {v4, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getColumnWidth()F
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 271
    const-string/jumbo v5, "columnWidth"

    invoke-virtual {p0, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 272
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v5, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 283
    .local v0, "columnWidth":F
    cmpl-float v5, v0, v4

    if-gtz v5, :cond_0

    move v0, v4

    goto :goto_0

    .line 284
    .end local v0    # "columnWidth":F
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXAttr] getColumnWidth:"

    invoke-static {v4, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getElevation(I)F
    .locals 4
    .param p1, "viewPortW"    # I

    .prologue
    .line 256
    const-string/jumbo v3, "elevation"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "obj":Ljava/lang/Object;
    const/high16 v2, 0x7fc00000    # NaNf

    .line 258
    .local v2, "ret":F
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3, p1}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v2

    .line 266
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 263
    .restart local v0    # "number":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;
    .locals 5

    .prologue
    .line 120
    const-string/jumbo v3, "quality"

    invoke-virtual {p0, v3}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "quality"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "obj":Ljava/lang/Object;
    :goto_0
    sget-object v0, Lcom/taobao/weex/dom/WXImageQuality;->AUTO:Lcom/taobao/weex/dom/WXImageQuality;

    .line 123
    .local v0, "imageQuality":Lcom/taobao/weex/dom/WXImageQuality;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/dom/WXImageQuality;->valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/WXImageQuality;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 120
    .end local v0    # "imageQuality":Lcom/taobao/weex/dom/WXImageQuality;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "imageQuality"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 127
    .restart local v0    # "imageQuality":Lcom/taobao/weex/dom/WXImageQuality;
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Image"

    const-string/jumbo v4, "Invalid value image quality. Only low, normal, high, original are valid"

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getImageSharpen()Lcom/taobao/weex/common/WXImageSharpen;
    .locals 4

    .prologue
    .line 134
    const-string/jumbo v3, "sharpen"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 136
    const-string/jumbo v3, "imageSharpen"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    :cond_0
    if-nez v1, :cond_2

    .line 139
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    .line 147
    :cond_1
    :goto_0
    return-object v2

    .line 141
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "imageSharpen":Ljava/lang/String;
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    .line 143
    .local v2, "waImageSharpen":Lcom/taobao/weex/common/WXImageSharpen;
    const-string/jumbo v3, "sharpen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    goto :goto_0
.end method

.method public getImageSrc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v1, "src"

    invoke-virtual {p0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIsRecycleImage()Z
    .locals 3

    .prologue
    .line 235
    const-string/jumbo v2, "recycleImage"

    invoke-virtual {p0, v2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 236
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 237
    const/4 v2, 0x1

    .line 245
    :goto_0
    return v2

    .line 241
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXAttr] recycleImage:"

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLayoutType()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 333
    const-string/jumbo v3, "layout"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 334
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 350
    :goto_0
    return v2

    .line 339
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    const/4 v2, 0x3

    goto :goto_0

    .line 339
    :sswitch_0
    const-string/jumbo v5, "multi-column"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "grid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_1

    .line 343
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] getLayoutType:"

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x308b46 -> :sswitch_1
        0x2839c66a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLoadMoreOffset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    const-string/jumbo v1, "loadmoreoffset"

    invoke-virtual {p0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 219
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadMoreRetry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const-string/jumbo v1, "loadmoreretry"

    invoke-virtual {p0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v1, "scope"

    invoke-virtual {p0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "src":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 204
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getScrollDirection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    const-string/jumbo v1, "scrollDirection"

    invoke-virtual {p0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "scrollDirection":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 250
    const-string/jumbo v1, "vertical"

    .line 252
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStatement()Lc8/xZf;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p0, p1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Ljava/lang/String;

    .line 231
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 227
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 228
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/xYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lc8/xYf;->filterBindingStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, p1}, Lc8/xYf;->filterBindingStatement(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 412
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 416
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setBindingAttrs(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "mBindingAttrs":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/xYf;->mBindingAttrs:Landroid/support/v4/util/ArrayMap;

    .line 448
    return-void
.end method

.method public setStatement(Lc8/xZf;)V
    .locals 0
    .param p1, "mStatement"    # Lc8/xZf;

    .prologue
    .line 451
    iput-object p1, p0, Lc8/xYf;->mStatement:Lc8/xZf;

    .line 452
    return-void
.end method

.method public showIndicators()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 172
    const-string/jumbo v3, "showIndicators"

    invoke-virtual {p0, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 182
    :goto_0
    return v2

    .line 178
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXAttr] showIndicators:"

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public skipFilterPutAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 519
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lc8/xYf;->attr:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
