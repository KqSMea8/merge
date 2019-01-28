.class public Lc8/UZf;
.super Ljava/lang/Object;
.source "Operators.java"


# static fields
.field public static final AND:Ljava/lang/String; = "&&"

.field public static final AND_NOT:Ljava/lang/String; = "!"

.field public static final ARRAY_END:C = ']'

.field public static final ARRAY_END_STR:Ljava/lang/String; = "]"

.field public static final ARRAY_SEPRATOR:C = ','

.field public static final ARRAY_SEPRATOR_STR:Ljava/lang/String; = ","

.field public static final ARRAY_START:C = '['

.field public static final ARRAY_START_STR:Ljava/lang/String; = "["

.field public static final BLOCK_END:C = '}'

.field public static final BLOCK_END_STR:Ljava/lang/String; = "}"

.field public static final BLOCK_START:C = '{'

.field public static final BLOCK_START_STR:Ljava/lang/String; = "{"

.field public static final BRACKET_END:C = ')'

.field public static final BRACKET_END_STR:Ljava/lang/String; = ")"

.field public static final BRACKET_START:C = '('

.field public static final BRACKET_START_STR:Ljava/lang/String; = "("

.field public static final CONDITION_IF:C = '?'

.field public static final CONDITION_IF_MIDDLE:C = ':'

.field public static final CONDITION_IF_STRING:Ljava/lang/String; = "?"

.field public static final DIV:Ljava/lang/String; = "/"

.field public static final DOLLAR:C = '$'

.field public static final DOLLAR_STR:Ljava/lang/String; = "$"

.field public static final DOT:C = '.'

.field public static final DOT_STR:Ljava/lang/String; = "."

.field public static final EQUAL:Ljava/lang/String; = "==="

.field public static final EQUAL2:Ljava/lang/String; = "=="

.field public static final G:Ljava/lang/String; = ">"

.field public static final GE:Ljava/lang/String; = ">="

.field public static final KEYWORDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Ljava/lang/String; = "<"

.field public static final LE:Ljava/lang/String; = "<="

.field public static final MOD:Ljava/lang/String; = "%"

.field public static final MUL:Ljava/lang/String; = "*"

.field public static final NOT_EQUAL:Ljava/lang/String; = "!=="

.field public static final NOT_EQUAL2:Ljava/lang/String; = "!="

.field public static OPERATORS_PRIORITY:Ljava/util/Map; = null
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

.field public static final OR:Ljava/lang/String; = "||"

.field public static final PLUS:Ljava/lang/String; = "+"

.field public static final QUOTE:C = '\"'

.field public static final SINGLE_QUOTE:C = '\''

.field public static final SPACE:C = ' '

.field public static final SPACE_STR:Ljava/lang/String; = " "

.field public static final SUB:Ljava/lang/String; = "-"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xa

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    sput-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ")"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, " "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ","

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "]"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "||"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "&&"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "==="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "=="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "!=="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "!="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ">"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, ">="

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "<"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "<="

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "+"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "-"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "*"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "/"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "%"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "!"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "."

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "["

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "("

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lc8/UZf;->OPERATORS_PRIORITY:Ljava/util/Map;

    const-string/jumbo v1, "{"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 490
    sput-object v0, Lc8/UZf;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "null"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lc8/UZf;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "true"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lc8/UZf;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "false"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lc8/UZf;->KEYWORDS:Ljava/util/Map;

    const-string/jumbo v1, "undefined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static condition(Lc8/XZf;Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "selfs"    # Lc8/XZf;
    .param p1, "first"    # Lc8/XZf;
    .param p2, "second"    # Lc8/XZf;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "value":Z
    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0, p3}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/UZf;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    :cond_0
    if-eqz v0, :cond_1

    .line 215
    if-eqz p1, :cond_2

    .line 216
    invoke-virtual {p1, p3}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 219
    :cond_1
    if-eqz p2, :cond_2

    .line 220
    invoke-virtual {p2, p3}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static div(Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lc8/XZf;
    .param p1, "right"    # Lc8/XZf;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 173
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p1, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static dot(Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "left"    # Lc8/XZf;
    .param p1, "right"    # Lc8/XZf;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 35
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v3

    .line 38
    :cond_1
    invoke-virtual {p0, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "leftValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p1}, Lc8/XZf;->getType()I

    move-result v4

    if-eqz v4, :cond_4

    .line 44
    invoke-virtual {p1, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "identifter":Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 46
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "identifter":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 48
    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v1, ""

    .line 49
    .local v1, "key":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v1}, Lc8/UZf;->el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    .end local v1    # "key":Ljava/lang/String;
    .local v3, "value":Ljava/lang/Object;
    :goto_2
    if-nez v3, :cond_0

    .line 56
    invoke-virtual {p1}, Lc8/XZf;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/UZf;->specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 48
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {p1, v2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_2
.end method

.method public static el(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 63
    if-nez p0, :cond_1

    .line 106
    .end local p0    # "context":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 66
    .restart local p0    # "context":Ljava/lang/Object;
    :cond_1
    instance-of v6, p0, Lc8/RZf;

    if-eqz v6, :cond_3

    move-object v3, p0

    .line 67
    check-cast v3, Lc8/RZf;

    .line 68
    .local v3, "stack":Lc8/RZf;
    invoke-virtual {v3}, Lc8/RZf;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_3

    .line 69
    invoke-virtual {v3, v0}, Lc8/RZf;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 70
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/Map;

    if-eqz v6, :cond_2

    move-object v2, v4

    .line 71
    check-cast v2, Ljava/util/Map;

    .line 72
    .local v2, "map":Ljava/util/Map;
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 68
    .end local v2    # "map":Ljava/util/Map;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 78
    .end local v0    # "index":I
    .end local v3    # "stack":Lc8/RZf;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, p0, Ljava/util/Stack;

    if-eqz v6, :cond_5

    move-object v3, p0

    .line 79
    check-cast v3, Ljava/util/Stack;

    .line 80
    .local v3, "stack":Ljava/util/Stack;
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "index":I
    :goto_2
    if-ltz v0, :cond_5

    .line 81
    invoke-virtual {v3, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 82
    .restart local v4    # "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/util/Map;

    if-eqz v6, :cond_4

    move-object v2, v4

    .line 83
    check-cast v2, Ljava/util/Map;

    .line 84
    .restart local v2    # "map":Ljava/util/Map;
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 85
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 80
    .end local v2    # "map":Ljava/util/Map;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 91
    .end local v0    # "index":I
    .end local v3    # "stack":Ljava/util/Stack;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, p0, Ljava/util/Map;

    if-eqz v6, :cond_6

    .line 92
    check-cast p0, Ljava/util/Map;

    .end local p0    # "context":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 95
    .restart local p0    # "context":Ljava/lang/Object;
    :cond_6
    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_7

    move-object v1, p0

    .line 96
    check-cast v1, Ljava/util/List;

    .line 98
    .local v1, "list":Ljava/util/List;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v6

    .line 101
    .end local v1    # "list":Ljava/util/List;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public static getNumber(Ljava/lang/Object;)D
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v0, 0x0

    .line 342
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return-wide v0

    .line 345
    :cond_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 346
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 349
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDot(Ljava/lang/String;)Z
    .locals 3
    .param p0, "opStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 374
    .local v0, "op":C
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 326
    if-nez p0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    .line 331
    const/4 v1, 0x0

    goto :goto_0

    .line 329
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEquals(Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Z
    .locals 8
    .param p0, "left"    # Lc8/XZf;
    .param p1, "right"    # Lc8/XZf;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 255
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 258
    :cond_1
    const/4 v0, 0x0

    .line 259
    .local v0, "leftValue":Ljava/lang/Object;
    if-eqz p0, :cond_2

    .line 260
    invoke-virtual {p0, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 263
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p1, :cond_3

    .line 264
    invoke-virtual {p1, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 266
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_3
    if-nez v0, :cond_5

    .line 267
    if-eqz v1, :cond_0

    .line 270
    instance-of v4, v1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/UZf;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    .line 275
    goto :goto_0

    .line 277
    :cond_5
    if-nez v1, :cond_6

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/UZf;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 281
    goto :goto_0

    .line 283
    :cond_6
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_8

    .line 284
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_7

    .line 285
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 287
    :cond_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v1}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 289
    :cond_8
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_9

    .line 290
    invoke-static {v0}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 292
    :cond_9
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    .line 294
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 296
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public static isOpEnd(C)Z
    .locals 1
    .param p0, "op"    # C

    .prologue
    .line 360
    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    .line 364
    :cond_0
    const/4 v0, 0x1

    .line 366
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lc8/UZf;->isOpEnd(C)Z

    move-result v0

    return v0
.end method

.method public static isTrue(Ljava/lang/Object;)Z
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    if-nez p0, :cond_1

    .line 319
    .local v0, "bool":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 307
    .end local v0    # "bool":Ljava/lang/String;
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 308
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 310
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "bool":Ljava/lang/String;
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "undefined"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    invoke-static {v0}, Lc8/UZf;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 319
    goto :goto_0
.end method

.method public static mod(Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lc8/XZf;
    .param p1, "right"    # Lc8/XZf;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 197
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 203
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    rem-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static mul(Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lc8/XZf;
    .param p1, "right"    # Lc8/XZf;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 185
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static plus(Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lc8/XZf;
    .param p1, "right"    # Lc8/XZf;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 133
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 140
    :cond_2
    if-nez v0, :cond_3

    .line 154
    :goto_0
    return-object v1

    .line 143
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_4

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 145
    :cond_5
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_7

    .line 146
    :cond_6
    invoke-static {v0}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_8
    if-nez v0, :cond_9

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_a

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static specialKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "leftValue"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 112
    check-cast p0, Ljava/lang/CharSequence;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 114
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 115
    check-cast p0, Ljava/util/Map;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 117
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 118
    check-cast p0, Ljava/util/Map;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 120
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 121
    check-cast p0, Ljava/util/List;

    .end local p0    # "leftValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 123
    .restart local p0    # "leftValue":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sub(Lc8/XZf;Lc8/XZf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "left"    # Lc8/XZf;
    .param p1, "right"    # Lc8/XZf;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "leftValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 161
    .local v1, "rightValue":Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .end local v0    # "leftValue":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1, p2}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    .end local v1    # "rightValue":Ljava/lang/Object;
    :cond_1
    invoke-static {v0}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v1}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static tokenNumber(Lc8/XZf;Ljava/lang/Object;)D
    .locals 4
    .param p0, "self"    # Lc8/XZf;
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    const-wide/16 v2, 0x0

    .line 246
    :goto_0
    return-wide v2

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lc8/UZf;->getNumber(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public static tokenTrue(Lc8/XZf;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "selfs"    # Lc8/XZf;
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 235
    :goto_0
    return v1

    .line 234
    :cond_0
    invoke-virtual {p0, p1}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lc8/UZf;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
