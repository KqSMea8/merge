.class public Lc8/wJb;
.super Ljava/lang/Object;
.source "JSONSerializer.java"


# instance fields
.field protected afterFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/jJb;",
            ">;"
        }
    .end annotation
.end field

.field protected beforeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/mJb;",
            ">;"
        }
    .end annotation
.end field

.field public final config:Lc8/HJb;

.field protected context:Lc8/GJb;

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private indentCount:I

.field public locale:Ljava/util/Locale;

.field protected nameFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/BJb;",
            ">;"
        }
    .end annotation
.end field

.field public final out:Lc8/JJb;

.field protected propertyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/EJb;",
            ">;"
        }
    .end annotation
.end field

.field protected propertyPreFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/FJb;",
            ">;"
        }
    .end annotation
.end field

.field protected references:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lc8/GJb;",
            ">;"
        }
    .end annotation
.end field

.field public timeZone:Ljava/util/TimeZone;

.field protected valueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/MJb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 61
    new-instance v1, Lc8/JJb;

    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    sget v2, Lc8/AIb;->DEFAULT_GENERATE_FEATURE:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v1, v0, v2, v3}, Lc8/JJb;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    sget-object v0, Lc8/HJb;->globalInstance:Lc8/HJb;

    invoke-direct {p0, v1, v0}, Lc8/wJb;-><init>(Lc8/JJb;Lc8/HJb;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lc8/HJb;)V
    .locals 4
    .param p1, "config"    # Lc8/HJb;

    .prologue
    .line 70
    new-instance v1, Lc8/JJb;

    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    sget v2, Lc8/AIb;->DEFAULT_GENERATE_FEATURE:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v1, v0, v2, v3}, Lc8/JJb;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    invoke-direct {p0, v1, p1}, Lc8/wJb;-><init>(Lc8/JJb;Lc8/HJb;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lc8/JJb;)V
    .locals 1
    .param p1, "out"    # Lc8/JJb;

    .prologue
    .line 66
    sget-object v0, Lc8/HJb;->globalInstance:Lc8/HJb;

    invoke-direct {p0, p1, v0}, Lc8/wJb;-><init>(Lc8/JJb;Lc8/HJb;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lc8/JJb;Lc8/HJb;)V
    .locals 2
    .param p1, "out"    # Lc8/JJb;
    .param p2, "config"    # Lc8/HJb;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lc8/wJb;->beforeFilters:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lc8/wJb;->afterFilters:Ljava/util/List;

    .line 44
    iput-object v1, p0, Lc8/wJb;->propertyFilters:Ljava/util/List;

    .line 45
    iput-object v1, p0, Lc8/wJb;->valueFilters:Ljava/util/List;

    .line 46
    iput-object v1, p0, Lc8/wJb;->nameFilters:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lc8/wJb;->propertyPreFilters:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lc8/wJb;->indentCount:I

    .line 54
    iput-object v1, p0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    .line 57
    sget-object v0, Lc8/AIb;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lc8/wJb;->timeZone:Ljava/util/TimeZone;

    .line 58
    sget-object v0, Lc8/AIb;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lc8/wJb;->locale:Ljava/util/Locale;

    .line 74
    iput-object p1, p0, Lc8/wJb;->out:Lc8/JJb;

    .line 75
    iput-object p2, p0, Lc8/wJb;->config:Lc8/HJb;

    .line 76
    sget-object v0, Lc8/AIb;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lc8/wJb;->timeZone:Ljava/util/TimeZone;

    .line 77
    return-void
.end method

.method public static processValue(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "serializer"    # Lc8/wJb;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 333
    iget-object v1, p0, Lc8/wJb;->valueFilters:Ljava/util/List;

    .line 334
    .local v1, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    if-eqz v1, :cond_1

    .line 335
    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 336
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 338
    .end local p2    # "key":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/MJb;

    .local v0, "valueFilter":Lc8/MJb;
    move-object v2, p2

    .line 339
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p1, v2, p3}, Lc8/MJb;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 340
    goto :goto_0

    .line 343
    .end local v0    # "valueFilter":Lc8/MJb;
    :cond_1
    return-object p3
.end method

.method public static final write(Lc8/JJb;Ljava/lang/Object;)V
    .locals 2
    .param p0, "out"    # Lc8/JJb;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 248
    new-instance v0, Lc8/wJb;

    sget-object v1, Lc8/HJb;->globalInstance:Lc8/HJb;

    invoke-direct {v0, p0, v1}, Lc8/wJb;-><init>(Lc8/JJb;Lc8/HJb;)V

    .line 249
    .local v0, "serializer":Lc8/wJb;
    invoke-virtual {v0, p1}, Lc8/wJb;->write(Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public static final write(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 6
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 234
    new-instance v2, Lc8/JJb;

    const/4 v3, 0x0

    check-cast v3, Ljava/io/Writer;

    sget v4, Lc8/AIb;->DEFAULT_GENERATE_FEATURE:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v2, v3, v4, v5}, Lc8/JJb;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 237
    .local v2, "writer":Lc8/JJb;
    :try_start_0
    new-instance v1, Lc8/wJb;

    sget-object v3, Lc8/HJb;->globalInstance:Lc8/HJb;

    invoke-direct {v1, v2, v3}, Lc8/wJb;-><init>(Lc8/JJb;Lc8/HJb;)V

    .line 238
    .local v1, "serializer":Lc8/wJb;
    invoke-virtual {v1, p1}, Lc8/wJb;->write(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v2, p0}, Lc8/JJb;->writeTo(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {v2}, Lc8/JJb;->close()V

    .line 244
    return-void

    .line 240
    .end local v1    # "serializer":Lc8/wJb;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lc8/JJb;->close()V

    throw v3
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 381
    iget-object v1, p0, Lc8/wJb;->propertyFilters:Ljava/util/List;

    .line 383
    .local v1, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-nez v1, :cond_0

    move v2, v3

    .line 397
    .end local p2    # "key":Ljava/lang/Object;
    :goto_0
    return v2

    .line 387
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_0
    if-eqz p2, :cond_1

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 388
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 391
    .end local p2    # "key":Ljava/lang/Object;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/EJb;

    .local v0, "propertyFilter":Lc8/EJb;
    move-object v2, p2

    .line 392
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p1, v2, p3}, Lc8/EJb;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 393
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "propertyFilter":Lc8/EJb;
    :cond_3
    move v2, v3

    .line 397
    goto :goto_0
.end method

.method public applyName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 361
    iget-object v1, p0, Lc8/wJb;->propertyPreFilters:Ljava/util/List;

    .line 363
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-nez v1, :cond_0

    move v2, v4

    .line 377
    .end local p2    # "key":Ljava/lang/Object;
    :goto_0
    return v2

    .line 367
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p2    # "key":Ljava/lang/Object;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FJb;

    .line 368
    .local v0, "filter":Lc8/FJb;
    if-eqz p2, :cond_3

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 369
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .local p2, "key":Ljava/lang/String;
    move-object v3, p2

    .end local p2    # "key":Ljava/lang/String;
    :goto_2
    move-object v2, v3

    .line 372
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p0, p1, v2}, Lc8/FJb;->apply(Lc8/wJb;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object p2, v3

    .line 375
    goto :goto_1

    .end local v0    # "filter":Lc8/FJb;
    :cond_2
    move v2, v4

    .line 377
    goto :goto_0

    .restart local v0    # "filter":Lc8/FJb;
    :cond_3
    move-object v3, p2

    goto :goto_2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v0}, Lc8/JJb;->close()V

    .line 330
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v0, p1, p2}, Lc8/JJb;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 231
    return-void
.end method

.method public decrementIdent()V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lc8/wJb;->indentCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/wJb;->indentCount:I

    .line 176
    return-void
.end method

.method public getAfterFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/jJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lc8/wJb;->afterFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wJb;->afterFilters:Ljava/util/List;

    .line 198
    :cond_0
    iget-object v0, p0, Lc8/wJb;->afterFilters:Ljava/util/List;

    return-object v0
.end method

.method public getBeforeFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/mJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lc8/wJb;->beforeFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wJb;->beforeFilters:Ljava/util/List;

    .line 190
    :cond_0
    iget-object v0, p0, Lc8/wJb;->beforeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Lc8/GJb;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lc8/wJb;->context:Lc8/GJb;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lc8/wJb;->dateFormatPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lc8/wJb;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lc8/wJb;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    .line 90
    iget-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lc8/wJb;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getDateFormatPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/wJb;->dateFormatPattern:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/BJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lc8/wJb;->nameFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wJb;->nameFilters:Ljava/util/List;

    .line 206
    :cond_0
    iget-object v0, p0, Lc8/wJb;->nameFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/EJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lc8/wJb;->propertyFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wJb;->propertyFilters:Ljava/util/List;

    .line 222
    :cond_0
    iget-object v0, p0, Lc8/wJb;->propertyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyPreFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/FJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lc8/wJb;->propertyPreFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wJb;->propertyPreFilters:Ljava/util/List;

    .line 214
    :cond_0
    iget-object v0, p0, Lc8/wJb;->propertyPreFilters:Ljava/util/List;

    return-object v0
.end method

.method public getValueFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/MJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lc8/wJb;->valueFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/wJb;->valueFilters:Ljava/util/List;

    .line 167
    :cond_0
    iget-object v0, p0, Lc8/wJb;->valueFilters:Ljava/util/List;

    return-object v0
.end method

.method public getWriter()Lc8/JJb;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    return-object v0
.end method

.method public incrementIndent()V
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lc8/wJb;->indentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/wJb;->indentCount:I

    .line 172
    return-void
.end method

.method public println()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lc8/wJb;->out:Lc8/JJb;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lc8/JJb;->write(I)V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/wJb;->indentCount:I

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lc8/wJb;->out:Lc8/JJb;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lc8/JJb;->write(I)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public processKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 347
    iget-object v1, p0, Lc8/wJb;->nameFilters:Ljava/util/List;

    .line 348
    .local v1, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v1, :cond_1

    .line 349
    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 350
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 352
    .end local p2    # "key":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, p2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/BJb;

    .line 353
    .local v0, "nameFilter":Lc8/BJb;
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p1, v2, p3}, Lc8/BJb;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .local p2, "key":Ljava/lang/String;
    move-object v2, p2

    .line 354
    goto :goto_0

    .end local v0    # "nameFilter":Lc8/BJb;
    .local p2, "key":Ljava/lang/Object;
    :cond_1
    move-object v2, p2

    .line 357
    .end local p2    # "key":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public setContext(Lc8/GJb;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "parent"    # Lc8/GJb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "features"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    iget v0, v0, Lc8/JJb;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lc8/GJb;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/GJb;-><init>(Lc8/GJb;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lc8/wJb;->context:Lc8/GJb;

    .line 114
    iget-object v0, p0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    .line 117
    :cond_0
    iget-object v0, p0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lc8/wJb;->context:Lc8/GJb;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lc8/wJb;->dateFormatPattern:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    .line 109
    :cond_0
    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 98
    iput-object p1, p0, Lc8/wJb;->dateFormat:Ljava/text/DateFormat;

    .line 99
    iget-object v0, p0, Lc8/wJb;->dateFormatPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/wJb;->dateFormatPattern:Ljava/lang/String;

    .line 102
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v0}, Lc8/JJb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    iget-object v3, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v3}, Lc8/JJb;->writeNull()V

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lc8/wJb;->config:Lc8/HJb;

    invoke-virtual {v3, v0}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v2

    .line 262
    .local v2, "writer":Lc8/DJb;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, p0, p1, v3, v4}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final write(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 313
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    iget v0, v0, Lc8/JJb;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v0}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    iget v0, v0, Lc8/JJb;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v0, p1}, Lc8/JJb;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lc8/JJb;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0
.end method

.method protected final writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "seperator"    # C
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v0, p1}, Lc8/JJb;->write(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lc8/wJb;->out:Lc8/JJb;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lc8/JJb;->writeFieldName(Ljava/lang/String;Z)V

    .line 277
    invoke-virtual {p0, p3}, Lc8/wJb;->write(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public writeReference(Ljava/lang/Object;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 122
    iget-object v0, p0, Lc8/wJb;->context:Lc8/GJb;

    .line 123
    .local v0, "context":Lc8/GJb;
    iget-object v1, v0, Lc8/GJb;->object:Ljava/lang/Object;

    .line 125
    .local v1, "current":Ljava/lang/Object;
    if-ne p1, v1, :cond_0

    .line 126
    iget-object v6, p0, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v7, "{\"$ref\":\"@\"}"

    invoke-virtual {v6, v7}, Lc8/JJb;->write(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, v0, Lc8/GJb;->parent:Lc8/GJb;

    .line 132
    .local v2, "parentContext":Lc8/GJb;
    if-eqz v2, :cond_1

    .line 133
    iget-object v6, v2, Lc8/GJb;->object:Ljava/lang/Object;

    if-ne p1, v6, :cond_1

    .line 134
    iget-object v6, p0, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v7, "{\"$ref\":\"..\"}"

    invoke-virtual {v6, v7}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    move-object v5, v0

    .line 141
    .local v5, "rootContext":Lc8/GJb;
    :goto_1
    iget-object v6, v5, Lc8/GJb;->parent:Lc8/GJb;

    if-eqz v6, :cond_2

    .line 144
    iget-object v5, v5, Lc8/GJb;->parent:Lc8/GJb;

    goto :goto_1

    .line 147
    :cond_2
    iget-object v6, v5, Lc8/GJb;->object:Ljava/lang/Object;

    if-ne p1, v6, :cond_3

    .line 148
    iget-object v6, p0, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v7, "{\"$ref\":\"$\"}"

    invoke-virtual {v6, v7}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v6, p0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/GJb;

    .line 154
    .local v4, "refContext":Lc8/GJb;
    invoke-virtual {v4}, Lc8/GJb;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "path":Ljava/lang/String;
    iget-object v6, p0, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v7, "{\"$ref\":\""

    invoke-virtual {v6, v7}, Lc8/JJb;->write(Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v6, v3}, Lc8/JJb;->write(Ljava/lang/String;)V

    .line 158
    iget-object v6, p0, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v7, "\"}"

    invoke-virtual {v6, v7}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lc8/wJb;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 270
    return-void
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/reflect/Type;
    .param p4, "features"    # I

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    :try_start_0
    iget-object v3, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v3}, Lc8/JJb;->writeNull()V

    .line 294
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 289
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lc8/wJb;->config:Lc8/HJb;

    invoke-virtual {v3, v0}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v2

    .line 291
    .local v2, "writer":Lc8/DJb;
    invoke-interface {v2, p0, p1, p2, p3}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "writer":Lc8/DJb;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 298
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {p0}, Lc8/wJb;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 300
    .local v0, "dateFormat":Ljava/text/DateFormat;
    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    iget-object v2, p0, Lc8/wJb;->locale:Ljava/util/Locale;

    invoke-direct {v0, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 302
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    iget-object v2, p0, Lc8/wJb;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 304
    :cond_0
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lc8/wJb;->out:Lc8/JJb;

    invoke-virtual {v2, v1}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    .line 309
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 308
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Lc8/wJb;->write(Ljava/lang/Object;)V

    goto :goto_0
.end method
