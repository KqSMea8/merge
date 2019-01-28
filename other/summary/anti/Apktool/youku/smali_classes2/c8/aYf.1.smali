.class public final Lc8/aYf;
.super Ljava/lang/Object;
.source "CSSAlignConvert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2AlignItems(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSAlign;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 29
    .local v0, "align":Lcom/taobao/weex/dom/flex/CSSAlign;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    const-string/jumbo v1, "stretch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v1, "flex-end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_END:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0

    .line 35
    :cond_3
    const-string/jumbo v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->AUTO:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0

    .line 37
    :cond_4
    const-string/jumbo v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->CENTER:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0
.end method

.method public static convert2AlignSelf(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSAlign;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->AUTO:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 46
    .local v0, "align":Lcom/taobao/weex/dom/flex/CSSAlign;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->AUTO:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    const-string/jumbo v1, "flex-start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v1, "flex-end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_END:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0

    .line 52
    :cond_3
    const-string/jumbo v1, "stretch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0

    .line 54
    :cond_4
    const-string/jumbo v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->CENTER:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0
.end method
