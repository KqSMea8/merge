.class public Lc8/TZe;
.super Ljava/lang/Object;
.source "DefaultViewConstructor.java"

# interfaces
.implements Lc8/haf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "viewIdentify"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "DView"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    new-instance v0, Landroid/view/View;

    .end local v0    # "view":Landroid/view/View;
    invoke-direct {v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    const-string/jumbo v1, "DTextView"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    new-instance v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-direct {v0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 35
    :cond_2
    const-string/jumbo v1, "DFrameLayout"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    new-instance v0, Lc8/Uaf;

    .end local v0    # "view":Landroid/view/View;
    invoke-direct {v0, p2, p3}, Lc8/Uaf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 37
    :cond_3
    const-string/jumbo v1, "DLinearLayout"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    new-instance v0, Lc8/Vaf;

    .end local v0    # "view":Landroid/view/View;
    invoke-direct {v0, p2, p3}, Lc8/Vaf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 39
    :cond_4
    const-string/jumbo v1, "DCountDownTimerView"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v0, Lc8/Taf;

    .end local v0    # "view":Landroid/view/View;
    invoke-direct {v0, p2, p3}, Lc8/Taf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public setSpecificAttributes(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method
