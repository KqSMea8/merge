.class public Lc8/Idf;
.super Ljava/lang/Object;
.source "ExpressionExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Gdf;,
        Lc8/Hdf;
    }
.end annotation


# static fields
.field public static final OPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string/jumbo v0, "\\$\\{[a-zA-Z()\\. _\\-\\[\\]0-9]*(?!\\$\\{[a-zA-Z()\\. \\_\\-\\[\\]0-9]*\\})[a-zA-Z()\\. \\_\\-\\[\\]0-9]*\\}"

    .line 25
    .local v0, "p":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lc8/Idf;->sPattern:Ljava/util/regex/Pattern;

    .line 26
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 27
    sput-object v1, Lc8/Idf;->OPS:Ljava/util/Set;

    const-string/jumbo v2, "empty"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Lc8/Idf;->OPS:Ljava/util/Set;

    const-string/jumbo v2, "not"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v1, Lc8/Idf;->OPS:Ljava/util/Set;

    const-string/jumbo v2, "deleteifnull"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method private static doDeleteIfNull(Ljava/lang/Object;Ljava/lang/Object;Lc8/Hdf;)V
    .locals 3
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "operand"    # Ljava/lang/Object;
    .param p2, "result"    # Lc8/Hdf;

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "${"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0}, Lc8/Idf;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lc8/Hdf;->result:Ljava/lang/Object;

    .line 136
    invoke-static {p0, p1}, Lc8/Idf;->doEmpty(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Lc8/Hdf;->interrupt:Z

    .line 137
    return-void

    .line 136
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static doEmpty(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "operand"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 143
    instance-of v10, p1, Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "${"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "s":Ljava/lang/String;
    invoke-static {p0, v7}, Lc8/Idf;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    .local v5, "o":Ljava/lang/Object;
    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_3

    move-object v6, v5

    .line 148
    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "opString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 150
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 197
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "opString":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 154
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "opString":Ljava/lang/String;
    .restart local v7    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    .line 155
    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 161
    .end local v6    # "opString":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v5}, Lc8/Idf;->doEmpty(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    goto :goto_0

    .line 164
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    if-nez p1, :cond_5

    move v8, v9

    .line 165
    goto :goto_0

    .line 168
    :cond_5
    instance-of v10, p1, Ljava/lang/Number;

    if-eqz v10, :cond_6

    move-object v4, p1

    .line 169
    check-cast v4, Ljava/lang/Number;

    .line 170
    .local v4, "number":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 173
    .end local v4    # "number":Ljava/lang/Number;
    :cond_6
    instance-of v10, p1, Ljava/lang/Boolean;

    if-eqz v10, :cond_7

    move-object v0, p1

    .line 174
    check-cast v0, Ljava/lang/Boolean;

    .line 175
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 178
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_7
    instance-of v10, p1, Ljava/util/List;

    if-eqz v10, :cond_8

    move-object v2, p1

    .line 179
    check-cast v2, Ljava/util/List;

    .line 180
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 183
    .end local v2    # "list":Ljava/util/List;
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 185
    :try_start_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    .local v1, "length":I
    if-gtz v1, :cond_0

    move v8, v9

    goto :goto_0

    .line 192
    .end local v1    # "length":I
    :cond_9
    instance-of v10, p1, Ljava/util/Map;

    if-eqz v10, :cond_0

    move-object v3, p1

    .line 193
    check-cast v3, Ljava/util/Map;

    .line 194
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 188
    .end local v3    # "map":Ljava/util/Map;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method private static doNot(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "operand"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    instance-of v8, p1, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "${"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "s":Ljava/lang/String;
    invoke-static {p0, v4}, Lc8/Idf;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 98
    .local v3, "o":Ljava/lang/Object;
    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v5, v3

    .line 99
    check-cast v5, Ljava/lang/String;

    .line 100
    .local v5, "s1":Ljava/lang/String;
    const-string/jumbo v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "s1":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 104
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "s1":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "false"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 105
    goto :goto_0

    .line 109
    :cond_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    .local v1, "i":I
    if-nez v1, :cond_0

    move v6, v7

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :catch_0
    move-exception v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 116
    .end local v5    # "s1":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v3}, Lc8/Idf;->doNot(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto :goto_0

    .line 119
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    instance-of v8, p1, Ljava/lang/Number;

    if-eqz v8, :cond_5

    move-object v2, p1

    .line 120
    check-cast v2, Ljava/lang/Number;

    .line 121
    .local v2, "number":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 124
    .end local v2    # "number":Ljava/lang/Number;
    :cond_5
    instance-of v8, p1, Ljava/lang/Boolean;

    if-eqz v8, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Ljava/lang/Boolean;

    .line 126
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public static evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 69
    :cond_1
    :goto_0
    return-object v3

    .line 38
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .local v8, "sb":Ljava/lang/StringBuilder;
    sget-object v10, Lc8/Idf;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 40
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 41
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 42
    .local v9, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 43
    .local v1, "end":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 45
    .local v4, "length":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "el":Ljava/lang/String;
    invoke-static {v0}, Lc8/Idf;->getExtendOperator(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 49
    .local v2, "extOp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 50
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v10, v11, p0}, Lc8/Idf;->evaluateOps(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Hdf;

    move-result-object v6

    .line 51
    .local v6, "opsResult":Lc8/Hdf;
    iget-object v3, v6, Lc8/Hdf;->result:Ljava/lang/Object;

    .line 52
    .local v3, "lastResult":Ljava/lang/Object;
    iget-boolean v10, v6, Lc8/Hdf;->interrupt:Z

    if-nez v10, :cond_1

    .line 59
    .end local v6    # "opsResult":Lc8/Hdf;
    :goto_2
    if-nez v9, :cond_3

    if-eq v1, v4, :cond_1

    .line 63
    :cond_3
    if-nez v3, :cond_5

    const-string/jumbo v7, ""

    .line 64
    .local v7, "s":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8, v9, v1, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-object v10, Lc8/Idf;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 67
    goto :goto_1

    .line 56
    .end local v3    # "lastResult":Ljava/lang/Object;
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    invoke-static {p0, v0}, Lc8/Fdf;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "lastResult":Ljava/lang/Object;
    goto :goto_2

    .line 63
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 69
    .end local v0    # "el":Ljava/lang/String;
    .end local v1    # "end":I
    .end local v2    # "extOp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "lastResult":Ljava/lang/Object;
    .end local v4    # "length":I
    .end local v9    # "start":I
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static evaluateOps(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Hdf;
    .locals 2
    .param p0, "op"    # Ljava/lang/String;
    .param p1, "operand"    # Ljava/lang/Object;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 74
    new-instance v0, Lc8/Hdf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Hdf;-><init>(Lc8/Gdf;)V

    .line 75
    .local v0, "result":Lc8/Hdf;
    const-string/jumbo v1, "empty"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p2, p1}, Lc8/Idf;->doEmpty(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lc8/Hdf;->result:Ljava/lang/Object;

    .line 91
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string/jumbo v1, "not"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-static {p2, p1}, Lc8/Idf;->doNot(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lc8/Hdf;->result:Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_1
    const-string/jumbo v1, "deleteIfNull"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {p2, p1, v0}, Lc8/Idf;->doDeleteIfNull(Ljava/lang/Object;Ljava/lang/Object;Lc8/Hdf;)V

    goto :goto_0

    .line 90
    :cond_2
    iput-object p1, v0, Lc8/Hdf;->result:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getExtendOperator(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .param p0, "el"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 201
    const-string/jumbo v6, "{"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "start":I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "val":Ljava/lang/String;
    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "words":[Ljava/lang/String;
    array-length v6, v4

    if-gtz v6, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v5

    .line 208
    :cond_1
    const/4 v6, 0x0

    aget-object v3, v4, v6

    .line 209
    .local v3, "word":Ljava/lang/String;
    invoke-static {v3}, Lc8/Idf;->isOps(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "operand":Ljava/lang/String;
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static isOps(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v0, Lc8/Idf;->OPS:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
