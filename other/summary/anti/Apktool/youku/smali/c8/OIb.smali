.class public Lc8/OIb;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lc8/hJb;


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final values:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lc8/OIb;->enumClass:Ljava/lang/Class;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lc8/OIb;->values:[Ljava/lang/Enum;

    .line 17
    return-void
.end method


# virtual methods
.method public deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 23
    :try_start_0
    iget-object v2, p1, Lc8/NIb;->lexer:Lc8/PIb;

    .line 24
    .local v2, "lexer":Lc8/PIb;
    iget v4, v2, Lc8/PIb;->token:I

    .line 25
    .local v4, "token":I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    .line 26
    invoke-virtual {v2}, Lc8/PIb;->intValue()I

    move-result v1

    .line 27
    .local v1, "intValue":I
    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Lc8/PIb;->nextToken(I)V

    .line 29
    if-ltz v1, :cond_0

    iget-object v6, p0, Lc8/OIb;->values:[Ljava/lang/Enum;

    array-length v6, v6

    if-le v1, v6, :cond_1

    .line 30
    :cond_0
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parse enum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/OIb;->enumClass:Ljava/lang/Class;

    invoke-static {v8}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " error, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v1    # "intValue":I
    .end local v2    # "lexer":Lc8/PIb;
    .end local v4    # "token":I
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    throw v0

    .line 33
    .end local v0    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v1    # "intValue":I
    .restart local v2    # "lexer":Lc8/PIb;
    .restart local v4    # "token":I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lc8/OIb;->values:[Ljava/lang/Enum;

    aget-object v6, v6, v1

    .line 47
    .end local v1    # "intValue":I
    :cond_2
    :goto_0
    return-object v6

    .line 34
    :cond_3
    const/4 v7, 0x4

    if-ne v4, v7, :cond_4

    .line 35
    invoke-virtual {v2}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "strVal":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Lc8/PIb;->nextToken(I)V

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 42
    iget-object v6, p0, Lc8/OIb;->enumClass:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    goto :goto_0

    .line 43
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_4
    const/16 v7, 0x8

    if-ne v4, v7, :cond_5

    .line 45
    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Lc8/PIb;->nextToken(I)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 55
    .end local v2    # "lexer":Lc8/PIb;
    .end local v4    # "token":I
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "lexer":Lc8/PIb;
    .restart local v4    # "token":I
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v5

    .line 52
    .local v5, "value":Ljava/lang/Object;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parse enum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/OIb;->enumClass:Ljava/lang/Class;

    invoke-static {v8}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " error, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method
