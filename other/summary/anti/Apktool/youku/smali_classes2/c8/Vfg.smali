.class public Lc8/Vfg;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lexer"
.end annotation


# static fields
.field private static final A_LOWER:C = 'a'

.field private static final A_UPPER:C = 'A'

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DOT:C = '.'

.field private static final LEFT_PARENT:Ljava/lang/String; = "("

.field private static final MINUS:C = '-'

.field private static final NINE:C = '9'

.field private static final PLUS:C = '+'

.field private static final RIGHT_PARENT:Ljava/lang/String; = ")"

.field private static final ZERO:C = '0'

.field private static final Z_LOWER:C = 'z'

.field private static final Z_UPPER:C = 'Z'


# instance fields
.field private current:Lcom/taobao/weex/utils/FunctionParser$Token;

.field private pointer:I

.field private source:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lc8/Vfg;->pointer:I

    .line 155
    iput-object p1, p0, Lc8/Vfg;->source:Ljava/lang/String;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lc8/Ufg;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lc8/Ufg;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lc8/Vfg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/Vfg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Vfg;

    .prologue
    .line 135
    invoke-direct {p0}, Lc8/Vfg;->moveOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lc8/Vfg;)Lcom/taobao/weex/utils/FunctionParser$Token;
    .locals 1
    .param p0, "x0"    # Lc8/Vfg;

    .prologue
    .line 135
    invoke-direct {p0}, Lc8/Vfg;->getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/Vfg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Vfg;

    .prologue
    .line 135
    invoke-direct {p0}, Lc8/Vfg;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/Vfg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Vfg;

    .prologue
    .line 135
    iget-object v0, p0, Lc8/Vfg;->source:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentToken()Lcom/taobao/weex/utils/FunctionParser$Token;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lc8/Vfg;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method

.method private getCurrentTokenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lc8/Vfg;->value:Ljava/lang/String;

    return-object v0
.end method

.method private isCharacterOrDigit(C)Z
    .locals 1
    .param p1, "letter"    # C

    .prologue
    .line 231
    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_3

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFuncName(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "funcName"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 220
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 221
    .local v1, "letter":C
    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    .line 224
    const/4 v2, 0x0

    .line 227
    .end local v1    # "letter":C
    :goto_1
    return v2

    .line 219
    .restart local v1    # "letter":C
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "letter":C
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private moveOn(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string/jumbo v0, "("

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lc8/Vfg;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 201
    const-string/jumbo v0, "("

    iput-object v0, p0, Lc8/Vfg;->value:Ljava/lang/String;

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string/jumbo v0, ")"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lc8/Vfg;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 204
    const-string/jumbo v0, ")"

    iput-object v0, p0, Lc8/Vfg;->value:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lc8/Vfg;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 207
    const-string/jumbo v0, ","

    iput-object v0, p0, Lc8/Vfg;->value:Ljava/lang/String;

    goto :goto_0

    .line 208
    :cond_2
    invoke-direct {p0, p1}, Lc8/Vfg;->isFuncName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lc8/Vfg;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 210
    iput-object p1, p0, Lc8/Vfg;->value:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_3
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    iput-object v0, p0, Lc8/Vfg;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 213
    iput-object p1, p0, Lc8/Vfg;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method private moveOn()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 167
    iget v1, p0, Lc8/Vfg;->pointer:I

    .line 169
    .local v1, "start":I
    :goto_0
    iget v3, p0, Lc8/Vfg;->pointer:I

    iget-object v4, p0, Lc8/Vfg;->source:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 170
    iget-object v3, p0, Lc8/Vfg;->source:Ljava/lang/String;

    iget v4, p0, Lc8/Vfg;->pointer:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, "curChar":C
    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 172
    iget v3, p0, Lc8/Vfg;->pointer:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc8/Vfg;->pointer:I

    if-ne v1, v3, :cond_3

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-direct {p0, v0}, Lc8/Vfg;->isCharacterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x25

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_2

    .line 179
    :cond_1
    iget v3, p0, Lc8/Vfg;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/Vfg;->pointer:I

    goto :goto_0

    .line 181
    :cond_2
    iget v3, p0, Lc8/Vfg;->pointer:I

    if-ne v1, v3, :cond_3

    .line 182
    iget v3, p0, Lc8/Vfg;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/Vfg;->pointer:I

    .line 187
    .end local v0    # "curChar":C
    :cond_3
    iget v3, p0, Lc8/Vfg;->pointer:I

    if-eq v1, v3, :cond_4

    .line 188
    iget-object v3, p0, Lc8/Vfg;->source:Ljava/lang/String;

    iget v4, p0, Lc8/Vfg;->pointer:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "symbol":Ljava/lang/String;
    invoke-direct {p0, v2}, Lc8/Vfg;->moveOn(Ljava/lang/String;)V

    .line 190
    const/4 v3, 0x1

    .line 194
    .end local v2    # "symbol":Ljava/lang/String;
    :goto_1
    return v3

    .line 192
    :cond_4
    iput-object v5, p0, Lc8/Vfg;->current:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 193
    iput-object v5, p0, Lc8/Vfg;->value:Ljava/lang/String;

    .line 194
    const/4 v3, 0x0

    goto :goto_1
.end method
