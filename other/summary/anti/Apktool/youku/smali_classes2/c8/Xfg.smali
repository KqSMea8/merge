.class public Lc8/Xfg;
.super Ljava/lang/Object;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ufg;,
        Lc8/Vfg;,
        Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;,
        Lc8/Wfg;,
        Lcom/taobao/weex/utils/FunctionParser$Token;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SPACE:C = ' '


# instance fields
.field private lexer:Lc8/Vfg;

.field private mapper:Lc8/Wfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wfg",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/Wfg;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lc8/Wfg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/Wfg",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/Xfg;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    .local p2, "mapper":Lc8/Wfg;, "Lcom/taobao/weex/utils/FunctionParser$Mapper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lc8/Vfg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/Vfg;-><init>(Ljava/lang/String;Lc8/Ufg;)V

    iput-object v0, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    .line 47
    iput-object p2, p0, Lc8/Xfg;->mapper:Lc8/Wfg;

    .line 48
    return-void
.end method

.method private definition()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lc8/Xfg;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .local v0, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    :cond_0
    invoke-direct {p0}, Lc8/Xfg;->function()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 64
    iget-object v1, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    invoke-static {v1}, Lc8/Vfg;->access$200(Lc8/Vfg;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-eq v1, v2, :cond_0

    .line 65
    return-object v0
.end method

.method private function()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lc8/Xfg;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lc8/Xfg;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "functionName":Ljava/lang/String;
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lc8/Xfg;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 72
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lc8/Xfg;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    iget-object v2, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    invoke-static {v2}, Lc8/Vfg;->access$200(Lc8/Vfg;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    if-ne v2, v3, :cond_0

    .line 74
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lc8/Xfg;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lc8/Xfg;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    sget-object v2, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-direct {p0, v2}, Lc8/Xfg;->match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lc8/Xfg;->mapper:Lc8/Wfg;

    invoke-interface {v2, v0, v1}, Lc8/Wfg;->map(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private match(Lcom/taobao/weex/utils/FunctionParser$Token;)Ljava/lang/String;
    .locals 4
    .param p1, "token"    # Lcom/taobao/weex/utils/FunctionParser$Token;

    .prologue
    .line 82
    .local p0, "this":Lc8/Xfg;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    iget-object v1, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    invoke-static {v1}, Lc8/Vfg;->access$200(Lc8/Vfg;)Lcom/taobao/weex/utils/FunctionParser$Token;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 83
    iget-object v1, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    invoke-static {v1}, Lc8/Vfg;->access$300(Lc8/Vfg;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    invoke-static {v1}, Lc8/Vfg;->access$100(Lc8/Vfg;)Z

    .line 85
    return-object v0

    .line 87
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Token doesn\'t match"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    invoke-static {v3}, Lc8/Vfg;->access$400(Lc8/Vfg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/taobao/weex/utils/FunctionParser$WXInterpretationException;-><init>(Ljava/lang/String;Lc8/Ufg;)V

    throw v1
.end method


# virtual methods
.method public parse()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/Xfg;, "Lcom/taobao/weex/utils/FunctionParser<TK;TV;>;"
    iget-object v0, p0, Lc8/Xfg;->lexer:Lc8/Vfg;

    invoke-static {v0}, Lc8/Vfg;->access$100(Lc8/Vfg;)Z

    .line 57
    invoke-direct {p0}, Lc8/Xfg;->definition()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
