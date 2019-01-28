.class public Lc8/ZZf;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private timeout:I

.field private type:Lcom/taobao/weex/http/Options$Type;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/ZZf;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createOptions()Lc8/aag;
    .locals 8

    .prologue
    .line 135
    new-instance v0, Lc8/aag;

    iget-object v1, p0, Lc8/ZZf;->method:Ljava/lang/String;

    iget-object v2, p0, Lc8/ZZf;->url:Ljava/lang/String;

    iget-object v3, p0, Lc8/ZZf;->headers:Ljava/util/Map;

    iget-object v4, p0, Lc8/ZZf;->body:Ljava/lang/String;

    iget-object v5, p0, Lc8/ZZf;->type:Lcom/taobao/weex/http/Options$Type;

    iget v6, p0, Lc8/ZZf;->timeout:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lc8/aag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;ILc8/YZf;)V

    return-object v0
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/ZZf;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lc8/ZZf;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lc8/ZZf;
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/ZZf;->body:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lc8/ZZf;
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/ZZf;->method:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setTimeout(I)Lc8/ZZf;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 130
    iput p1, p0, Lc8/ZZf;->timeout:I

    .line 131
    return-object p0
.end method

.method public setType(Lcom/taobao/weex/http/Options$Type;)Lc8/ZZf;
    .locals 0
    .param p1, "type"    # Lcom/taobao/weex/http/Options$Type;

    .prologue
    .line 125
    iput-object p1, p0, Lc8/ZZf;->type:Lcom/taobao/weex/http/Options$Type;

    .line 126
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lc8/ZZf;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Lcom/taobao/weex/http/Options$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lc8/ZZf;->type:Lcom/taobao/weex/http/Options$Type;

    .line 121
    :goto_0
    return-object p0

    .line 116
    :cond_0
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Lcom/taobao/weex/http/Options$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lc8/ZZf;->type:Lcom/taobao/weex/http/Options$Type;

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object v0, p0, Lc8/ZZf;->type:Lcom/taobao/weex/http/Options$Type;

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)Lc8/ZZf;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/ZZf;->url:Ljava/lang/String;

    .line 94
    return-object p0
.end method
