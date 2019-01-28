.class public Lc8/VZf;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private code:Ljava/lang/String;

.field private operators:Lc8/RZf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/RZf",
            "<",
            "Lc8/WZf;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private stacks:Lc8/RZf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/RZf",
            "<",
            "Lc8/XZf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/VZf;->code:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lc8/VZf;->position:I

    .line 41
    new-instance v0, Lc8/RZf;

    invoke-direct {v0}, Lc8/RZf;-><init>()V

    iput-object v0, p0, Lc8/VZf;->stacks:Lc8/RZf;

    .line 42
    new-instance v0, Lc8/RZf;

    invoke-direct {v0}, Lc8/RZf;-><init>()V

    iput-object v0, p0, Lc8/VZf;->operators:Lc8/RZf;

    .line 43
    return-void
.end method

.method private final doStackOperators(I)V
    .locals 2
    .param p1, "operatorSize"    # I

    .prologue
    .line 342
    :goto_0
    iget-object v1, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v1}, Lc8/RZf;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 343
    iget-object v1, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v1}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WZf;

    .line 344
    .local v0, "symbol":Lc8/WZf;
    invoke-virtual {p0, v0}, Lc8/VZf;->doOperator(Lc8/WZf;)V

    goto :goto_0

    .line 346
    .end local v0    # "symbol":Lc8/WZf;
    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lc8/XZf;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Lc8/VZf;

    invoke-direct {v1, p0}, Lc8/VZf;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "parser":Lc8/VZf;
    invoke-virtual {v1}, Lc8/VZf;->parse()Lc8/XZf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .end local v1    # "parser":Lc8/VZf;
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_0
    new-instance v2, Lc8/SZf;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lc8/SZf;-><init>(Ljava/util/List;I)V

    goto :goto_0
.end method


# virtual methods
.method doOperator(Lc8/WZf;)V
    .locals 7
    .param p1, "symbol"    # Lc8/WZf;

    .prologue
    .line 253
    iget-object v1, p1, Lc8/WZf;->op:Ljava/lang/String;

    .line 254
    .local v1, "op":Ljava/lang/String;
    const-string/jumbo v5, "("

    iget-object v6, p1, Lc8/WZf;->op:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "{"

    iget-object v6, p1, Lc8/WZf;->op:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "["

    iget-object v6, p1, Lc8/WZf;->op:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "$"

    iget-object v6, p1, Lc8/WZf;->op:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string/jumbo v5, "{"

    iget-object v6, p1, Lc8/WZf;->op:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 263
    iget v3, p1, Lc8/WZf;->pos:I

    .line 264
    .local v3, "second":I
    iget v5, p1, Lc8/WZf;->pos:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 265
    .local v0, "first":I
    iget-object v5, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v5}, Lc8/RZf;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 266
    iget-object v5, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v5}, Lc8/RZf;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/WZf;

    iget v5, v5, Lc8/WZf;->pos:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 269
    :cond_2
    new-instance v2, Lc8/TZf;

    const/4 v5, 0x5

    invoke-direct {v2, v1, v5}, Lc8/TZf;-><init>(Ljava/lang/String;I)V

    .line 270
    .local v2, "operator":Lc8/TZf;
    const-string/jumbo v5, "!"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5}, Lc8/RZf;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 272
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5, v3}, Lc8/RZf;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/XZf;

    .line 273
    .local v4, "token":Lc8/XZf;
    iput-object v4, v2, Lc8/TZf;->self:Lc8/XZf;

    .line 274
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5, v3, v2}, Lc8/RZf;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 279
    .end local v4    # "token":Lc8/XZf;
    :cond_3
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5}, Lc8/RZf;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 280
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5, v3}, Lc8/RZf;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/XZf;

    iput-object v5, v2, Lc8/TZf;->second:Lc8/XZf;

    .line 284
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5}, Lc8/RZf;->size()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 285
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5, v0}, Lc8/RZf;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/XZf;

    iput-object v5, v2, Lc8/TZf;->first:Lc8/XZf;

    .line 291
    :cond_4
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5, v0, v2}, Lc8/RZf;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_5
    iget-object v5, v2, Lc8/TZf;->second:Lc8/XZf;

    if-nez v5, :cond_4

    goto/16 :goto_0
.end method

.method final hasNext()Z
    .locals 2

    .prologue
    .line 457
    iget v0, p0, Lc8/VZf;->position:I

    iget-object v1, p0, Lc8/VZf;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasNextToken()Z
    .locals 3

    .prologue
    .line 463
    :goto_0
    invoke-virtual {p0}, Lc8/VZf;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v2, p0, Lc8/VZf;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 465
    .local v0, "ch":C
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 466
    iget v1, p0, Lc8/VZf;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/VZf;->position:I

    goto :goto_0

    .line 469
    :cond_0
    const/4 v1, 0x1

    .line 471
    .end local v0    # "ch":C
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final nextToken()C
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v2, p0, Lc8/VZf;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 476
    .local v0, "ch":C
    :goto_0
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 477
    iget v1, p0, Lc8/VZf;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/VZf;->position:I

    .line 478
    iget-object v1, p0, Lc8/VZf;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lc8/VZf;->position:I

    if-ge v1, v2, :cond_0

    .line 481
    iget-object v1, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v2, p0, Lc8/VZf;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    goto :goto_0

    .line 483
    :cond_0
    return v0
.end method

.method public final parse()Lc8/XZf;
    .locals 4

    .prologue
    .line 47
    :goto_0
    invoke-virtual {p0}, Lc8/VZf;->hasNextToken()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lc8/VZf;->scanNextToken()C

    goto :goto_0

    .line 50
    :cond_0
    :goto_1
    iget-object v2, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v2}, Lc8/RZf;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    iget-object v2, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v2}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/WZf;

    .line 52
    .local v1, "op":Lc8/WZf;
    invoke-virtual {p0, v1}, Lc8/VZf;->doOperator(Lc8/WZf;)V

    goto :goto_1

    .line 54
    .end local v1    # "op":Lc8/WZf;
    :cond_1
    iget-object v2, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v2}, Lc8/RZf;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 55
    iget-object v2, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v2}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/XZf;

    .line 58
    :goto_2
    return-object v2

    .line 57
    :cond_2
    new-instance v0, Lc8/SZf;

    iget-object v2, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v2}, Lc8/RZf;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lc8/SZf;-><init>(Ljava/util/List;I)V

    .local v0, "block":Lc8/SZf;
    move-object v2, v0

    .line 58
    goto :goto_2
.end method

.method final scanArray()V
    .locals 15

    .prologue
    .line 111
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v7

    .line 112
    .local v7, "stackSize":I
    iget-object v11, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v4

    .line 113
    .local v4, "opSize":I
    const/4 v10, 0x0

    .line 114
    .local v10, "type":I
    iget v11, p0, Lc8/VZf;->position:I

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_0

    iget-object v11, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v12, p0, Lc8/VZf;->position:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_1

    .line 115
    :cond_0
    const/4 v10, 0x7

    .line 117
    :cond_1
    iget-object v11, p0, Lc8/VZf;->operators:Lc8/RZf;

    new-instance v12, Lc8/WZf;

    const-string/jumbo v13, "["

    iget-object v14, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v14}, Lc8/RZf;->size()I

    move-result v14

    invoke-direct {v12, v13, v14}, Lc8/WZf;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 118
    iget v11, p0, Lc8/VZf;->position:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lc8/VZf;->position:I

    .line 119
    :cond_2
    invoke-virtual {p0}, Lc8/VZf;->hasNextToken()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 120
    invoke-virtual {p0}, Lc8/VZf;->scanNextToken()C

    move-result v8

    .line 121
    .local v8, "token":C
    const/16 v11, 0x5d

    if-ne v8, v11, :cond_2

    .line 126
    .end local v8    # "token":C
    :cond_3
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v11

    if-gt v11, v7, :cond_4

    .line 127
    :goto_0
    iget-object v11, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v11

    if-le v11, v4, :cond_9

    .line 128
    iget-object v11, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_4
    :goto_1
    iget-object v11, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v11

    if-le v11, v4, :cond_5

    .line 134
    iget-object v11, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/WZf;

    .line 135
    .local v3, "op":Lc8/WZf;
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v11

    if-le v11, v7, :cond_4

    .line 136
    invoke-virtual {p0, v3}, Lc8/VZf;->doOperator(Lc8/WZf;)V

    goto :goto_1

    .line 139
    .end local v3    # "op":Lc8/WZf;
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v9, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    move v1, v7

    .local v1, "i":I
    :goto_2
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v11

    if-ge v1, v11, :cond_6

    .line 141
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11, v1}, Lc8/RZf;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_6
    :goto_3
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v11

    if-le v11, v7, :cond_7

    .line 144
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->pop()Ljava/lang/Object;

    goto :goto_3

    .line 146
    :cond_7
    const/4 v11, 0x7

    if-eq v10, v11, :cond_8

    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->size()I

    move-result v11

    if-nez v11, :cond_a

    .line 147
    :cond_8
    new-instance v0, Lc8/SZf;

    const/4 v11, 0x7

    invoke-direct {v0, v9, v11}, Lc8/SZf;-><init>(Ljava/util/List;I)V

    .line 148
    .local v0, "block":Lc8/SZf;
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11, v0}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 163
    .end local v0    # "block":Lc8/SZf;
    .end local v1    # "i":I
    .end local v9    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_9
    :goto_4
    return-void

    .line 152
    .restart local v1    # "i":I
    .restart local v9    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_a
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/XZf;

    .line 154
    .local v2, "identifer":Lc8/XZf;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 155
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/XZf;

    .line 159
    .local v6, "second":Lc8/XZf;
    :goto_5
    new-instance v5, Lc8/TZf;

    const-string/jumbo v11, "."

    invoke-direct {v5, v11, v10}, Lc8/TZf;-><init>(Ljava/lang/String;I)V

    .line 160
    .local v5, "operator":Lc8/TZf;
    iput-object v2, v5, Lc8/TZf;->first:Lc8/XZf;

    .line 161
    iput-object v6, v5, Lc8/TZf;->second:Lc8/XZf;

    .line 162
    iget-object v11, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v11, v5}, Lc8/RZf;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 157
    .end local v5    # "operator":Lc8/TZf;
    .end local v6    # "second":Lc8/XZf;
    :cond_b
    new-instance v6, Lc8/SZf;

    const/4 v11, 0x6

    invoke-direct {v6, v9, v11}, Lc8/SZf;-><init>(Ljava/util/List;I)V

    .restart local v6    # "second":Lc8/XZf;
    goto :goto_5
.end method

.method scanBracket()V
    .locals 10

    .prologue
    .line 166
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v4

    .line 167
    .local v4, "stackSize":I
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v3

    .line 168
    .local v3, "opSize":I
    iget-object v6, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v7, p0, Lc8/VZf;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_2

    .line 169
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    new-instance v7, Lc8/WZf;

    const-string/jumbo v8, "{"

    iget-object v9, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v9}, Lc8/RZf;->size()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lc8/WZf;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 170
    iget v6, p0, Lc8/VZf;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/VZf;->position:I

    .line 171
    :cond_0
    invoke-virtual {p0}, Lc8/VZf;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    invoke-virtual {p0}, Lc8/VZf;->scanNextToken()C

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_0

    .line 185
    :cond_1
    :goto_0
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-gt v6, v4, :cond_4

    .line 186
    :goto_1
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v3, :cond_8

    .line 187
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 177
    :cond_2
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    new-instance v7, Lc8/WZf;

    const-string/jumbo v8, "("

    iget-object v9, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v9}, Lc8/RZf;->size()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lc8/WZf;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 178
    iget v6, p0, Lc8/VZf;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/VZf;->position:I

    .line 179
    :cond_3
    invoke-virtual {p0}, Lc8/VZf;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    invoke-virtual {p0}, Lc8/VZf;->scanNextToken()C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_3

    goto :goto_0

    .line 191
    :cond_4
    :goto_2
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v3, :cond_5

    .line 192
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/WZf;

    .line 193
    .local v2, "op":Lc8/WZf;
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v4, :cond_4

    .line 194
    invoke-virtual {p0, v2}, Lc8/VZf;->doOperator(Lc8/WZf;)V

    goto :goto_2

    .line 197
    .end local v2    # "op":Lc8/WZf;
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v5, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    move v1, v4

    .local v1, "i":I
    :goto_3
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 199
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6, v1}, Lc8/RZf;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 201
    :cond_6
    :goto_4
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v4, :cond_7

    .line 202
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    goto :goto_4

    .line 204
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 205
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 210
    .end local v1    # "i":I
    .end local v5    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_8
    :goto_5
    return-void

    .line 207
    .restart local v1    # "i":I
    .restart local v5    # "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/el/parse/Token;>;"
    :cond_9
    new-instance v0, Lc8/SZf;

    const/4 v6, 0x6

    invoke-direct {v0, v5, v6}, Lc8/SZf;-><init>(Ljava/util/List;I)V

    .line 208
    .local v0, "block":Lc8/SZf;
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6, v0}, Lc8/RZf;->push(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method final scanIdentifier()V
    .locals 7

    .prologue
    .line 427
    iget v2, p0, Lc8/VZf;->position:I

    .line 428
    .local v2, "start":I
    iget v5, p0, Lc8/VZf;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/VZf;->position:I

    .line 429
    :goto_0
    invoke-virtual {p0}, Lc8/VZf;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 430
    iget-object v5, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 431
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    iget v5, p0, Lc8/VZf;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/VZf;->position:I

    goto :goto_0

    .line 438
    .end local v0    # "ch":C
    :cond_0
    iget-object v5, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "el":Ljava/lang/String;
    const-string/jumbo v5, "$"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 440
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "$"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 453
    :goto_1
    return-void

    .line 443
    :cond_1
    const-string/jumbo v5, "$"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    :cond_2
    const/4 v4, 0x0

    .line 446
    .local v4, "type":I
    sget-object v5, Lc8/UZf;->KEYWORDS:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 447
    iget-object v5, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v5}, Lc8/RZf;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v5}, Lc8/RZf;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/WZf;

    iget-object v5, v5, Lc8/WZf;->op:Ljava/lang/String;

    invoke-static {v5}, Lc8/UZf;->isDot(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 448
    :cond_3
    const/4 v4, 0x4

    .line 451
    :cond_4
    new-instance v3, Lc8/XZf;

    invoke-direct {v3, v1, v4}, Lc8/XZf;-><init>(Ljava/lang/String;I)V

    .line 452
    .local v3, "token":Lc8/XZf;
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5, v3}, Lc8/RZf;->push(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method scanIf()V
    .locals 8

    .prologue
    .line 298
    new-instance v1, Lc8/TZf;

    const-string/jumbo v6, "?"

    const/4 v7, 0x5

    invoke-direct {v1, v6, v7}, Lc8/TZf;-><init>(Ljava/lang/String;I)V

    .line 299
    .local v1, "operator":Lc8/TZf;
    const/4 v3, 0x0

    .line 300
    .local v3, "selfIndex":I
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lc8/VZf;->doStackOperators(I)V

    .line 301
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 302
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/WZf;

    iget v6, v6, Lc8/WZf;->pos:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 304
    :cond_0
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v3, :cond_1

    .line 305
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/XZf;

    iput-object v6, v1, Lc8/TZf;->self:Lc8/XZf;

    .line 308
    :cond_1
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v4

    .line 309
    .local v4, "stackSize":I
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v0

    .line 310
    .local v0, "leftOperatorSize":I
    iget v6, p0, Lc8/VZf;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/VZf;->position:I

    .line 311
    :cond_2
    invoke-virtual {p0}, Lc8/VZf;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    invoke-virtual {p0}, Lc8/VZf;->scanNextToken()C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_2

    .line 316
    :cond_3
    :goto_0
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v0, :cond_4

    .line 317
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/WZf;

    .line 318
    .local v5, "symbol":Lc8/WZf;
    invoke-virtual {p0, v5}, Lc8/VZf;->doOperator(Lc8/WZf;)V

    goto :goto_0

    .line 321
    .end local v5    # "symbol":Lc8/WZf;
    :cond_4
    :goto_1
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v4, :cond_5

    .line 322
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/XZf;

    iput-object v6, v1, Lc8/TZf;->first:Lc8/XZf;

    goto :goto_1

    .line 324
    :cond_5
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v2

    .line 325
    .local v2, "rightOperatorsSize":I
    :cond_6
    invoke-virtual {p0}, Lc8/VZf;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 326
    invoke-virtual {p0}, Lc8/VZf;->scanNextToken()C

    .line 327
    invoke-virtual {p0}, Lc8/VZf;->hasNextToken()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 328
    invoke-virtual {p0}, Lc8/VZf;->scanNextToken()C

    .line 330
    :cond_7
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-gt v6, v2, :cond_6

    .line 334
    :cond_8
    invoke-direct {p0, v2}, Lc8/VZf;->doStackOperators(I)V

    .line 335
    :goto_2
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->size()I

    move-result v6

    if-le v6, v4, :cond_9

    .line 336
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/XZf;

    iput-object v6, v1, Lc8/TZf;->second:Lc8/XZf;

    goto :goto_2

    .line 338
    :cond_9
    iget-object v6, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v6, v1}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method final scanNextToken()C
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lc8/VZf;->nextToken()C

    move-result v0

    .line 80
    .local v0, "ch":C
    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 81
    iget v1, p0, Lc8/VZf;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/VZf;->position:I

    .line 106
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lc8/VZf;->scanIdentifier()V

    goto :goto_0

    .line 85
    :cond_1
    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    .line 86
    :cond_2
    invoke-virtual {p0}, Lc8/VZf;->scanBracket()V

    goto :goto_0

    .line 87
    :cond_3
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 88
    invoke-virtual {p0}, Lc8/VZf;->scanArray()V

    goto :goto_0

    .line 89
    :cond_4
    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x27

    if-ne v0, v1, :cond_6

    .line 90
    :cond_5
    invoke-virtual {p0}, Lc8/VZf;->scanString()V

    goto :goto_0

    .line 91
    :cond_6
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v2, p0, Lc8/VZf;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 93
    :cond_8
    invoke-virtual {p0}, Lc8/VZf;->scanNumber()V

    goto :goto_0

    .line 94
    :cond_9
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_a

    .line 95
    invoke-virtual {p0}, Lc8/VZf;->scanIf()V

    goto :goto_0

    .line 96
    :cond_a
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_b

    const/16 v1, 0x29

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_b

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_c

    .line 101
    :cond_b
    iget v1, p0, Lc8/VZf;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/VZf;->position:I

    goto :goto_0

    .line 104
    :cond_c
    invoke-virtual {p0}, Lc8/VZf;->scanOperator()V

    goto :goto_0
.end method

.method final scanNumber()V
    .locals 9

    .prologue
    const/16 v8, 0x65

    const/16 v7, 0x2e

    .line 356
    const/4 v1, 0x1

    .line 357
    .local v1, "isInt":Z
    iget v4, p0, Lc8/VZf;->position:I

    .line 358
    .local v4, "start":I
    iget-object v5, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 359
    :cond_0
    const/4 v1, 0x0

    .line 361
    :cond_1
    iget v5, p0, Lc8/VZf;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/VZf;->position:I

    .line 362
    :goto_0
    invoke-virtual {p0}, Lc8/VZf;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 363
    iget-object v5, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 364
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_5

    .line 367
    :cond_2
    if-eq v0, v8, :cond_3

    if-ne v0, v7, :cond_4

    .line 369
    :cond_3
    const/4 v1, 0x0

    .line 371
    :cond_4
    iget v5, p0, Lc8/VZf;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/VZf;->position:I

    goto :goto_0

    .line 376
    .end local v0    # "ch":C
    :cond_5
    iget-object v5, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "number":Ljava/lang/String;
    const-string/jumbo v5, "."

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 387
    :goto_1
    return-void

    .line 381
    :cond_6
    if-eqz v1, :cond_7

    .line 382
    new-instance v3, Lc8/XZf;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lc8/XZf;-><init>(Ljava/lang/String;I)V

    .line 386
    .local v3, "stack":Lc8/XZf;
    :goto_2
    iget-object v5, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v5, v3}, Lc8/RZf;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 384
    .end local v3    # "stack":Lc8/XZf;
    :cond_7
    new-instance v3, Lc8/XZf;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v5}, Lc8/XZf;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "stack":Lc8/XZf;
    goto :goto_2
.end method

.method scanOperator()V
    .locals 11

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 217
    iget v5, p0, Lc8/VZf;->position:I

    .line 218
    .local v5, "start":I
    iget v6, p0, Lc8/VZf;->position:I

    add-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lc8/VZf;->code:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 219
    .local v1, "length":I
    iget-object v6, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v7, p0, Lc8/VZf;->position:I

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "operator":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 221
    sget-object v6, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 225
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_1

    .line 226
    sget-object v6, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 227
    const/4 v6, 0x1

    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 230
    :cond_1
    sget-object v6, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 232
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lc8/VZf;->code:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    .local v0, "illegalChar":I
    const-string/jumbo v6, "weex"

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lc8/VZf;->code:Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " illegal code operator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lc8/VZf;->position:I

    .line 248
    .end local v0    # "illegalChar":I
    :goto_0
    return-void

    .line 237
    :cond_2
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 238
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/WZf;

    iget-object v4, v6, Lc8/WZf;->op:Ljava/lang/String;

    .line 239
    .local v4, "preOp":Ljava/lang/String;
    sget-object v6, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v6, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v7, v6, :cond_3

    .line 240
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    invoke-virtual {v6}, Lc8/RZf;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/WZf;

    .line 241
    .local v2, "op":Lc8/WZf;
    invoke-virtual {p0, v2}, Lc8/VZf;->doOperator(Lc8/WZf;)V

    .line 244
    .end local v2    # "op":Lc8/WZf;
    .end local v4    # "preOp":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lc8/UZf;->isOpEnd(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 245
    iget-object v6, p0, Lc8/VZf;->operators:Lc8/RZf;

    new-instance v7, Lc8/WZf;

    iget-object v8, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v8}, Lc8/RZf;->size()I

    move-result v8

    invoke-direct {v7, v3, v8}, Lc8/WZf;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 247
    :cond_4
    iget v6, p0, Lc8/VZf;->position:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lc8/VZf;->position:I

    goto :goto_0
.end method

.method final scanString()V
    .locals 9

    .prologue
    .line 391
    iget v4, p0, Lc8/VZf;->position:I

    .line 392
    .local v4, "start":I
    new-instance v2, Lc8/RZf;

    invoke-direct {v2}, Lc8/RZf;-><init>()V

    .line 393
    .local v2, "operator":Lc8/RZf;
    iget-object v7, p0, Lc8/VZf;->code:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 394
    .local v3, "quote":C
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v2, v7}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lc8/VZf;->position:I

    :goto_0
    iget v7, p0, Lc8/VZf;->position:I

    iget-object v8, p0, Lc8/VZf;->code:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 397
    iget-object v7, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v8, p0, Lc8/VZf;->position:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 398
    .local v1, "ch":C
    if-ne v1, v3, :cond_3

    .line 399
    iget-object v7, p0, Lc8/VZf;->code:Ljava/lang/String;

    iget v8, p0, Lc8/VZf;->position:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_1

    .line 400
    invoke-virtual {v2}, Lc8/RZf;->pop()Ljava/lang/Object;

    .line 401
    invoke-virtual {v2}, Lc8/RZf;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 402
    iget v7, p0, Lc8/VZf;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lc8/VZf;->position:I

    .line 413
    .end local v1    # "ch":C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "string":Ljava/lang/String;
    new-instance v6, Lc8/XZf;

    const/4 v7, 0x3

    invoke-direct {v6, v5, v7}, Lc8/XZf;-><init>(Ljava/lang/String;I)V

    .line 415
    .local v6, "token":Lc8/XZf;
    iget-object v7, p0, Lc8/VZf;->stacks:Lc8/RZf;

    invoke-virtual {v7, v6}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 416
    return-void

    .line 406
    .end local v5    # "string":Ljava/lang/String;
    .end local v6    # "token":Lc8/XZf;
    .restart local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    :cond_2
    :goto_1
    iget v7, p0, Lc8/VZf;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lc8/VZf;->position:I

    goto :goto_0

    .line 410
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
