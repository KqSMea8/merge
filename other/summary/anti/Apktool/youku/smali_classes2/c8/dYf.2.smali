.class public Lc8/dYf;
.super Ljava/lang/Object;
.source "CSSPositionTypeConvert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSPositionType;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    .line 29
    .local v0, "position":Lcom/taobao/weex/dom/flex/CSSPositionType;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "relative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sticky"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    :cond_0
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    .line 34
    :cond_1
    :goto_0
    return-object v0

    .line 31
    :cond_2
    const-string/jumbo v1, "absolute"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "fixed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :cond_3
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSPositionType;->ABSOLUTE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    goto :goto_0
.end method
