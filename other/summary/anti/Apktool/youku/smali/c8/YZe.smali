.class public Lc8/YZe;
.super Landroid/view/LayoutInflater;
.source "DinamicInflater.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static from(Landroid/content/Context;)Lc8/YZe;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lc8/YZe;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lc8/YZe;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p1}, Lc8/YZe;->from(Landroid/content/Context;)Lc8/YZe;

    move-result-object v0

    return-object v0
.end method

.method public inflateView(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2
    .param p1, "res"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToParent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    invoke-static {v0, p2}, Lc8/Daf;->handleRootViewLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 64
    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-static {p1}, Lc8/VZe;->getViewConstructor(Ljava/lang/String;)Lc8/haf;

    move-result-object v0

    .line 35
    .local v0, "assistant":Lc8/haf;
    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lc8/YZe;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lc8/ZZe;->createView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "DinamicInflater"

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "onCreateView failed"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lc8/taf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 40
    new-instance v2, Lc8/Qaf;

    invoke-virtual {p0}, Lc8/YZe;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "compatible with %s, as dinamic createView fail."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/Qaf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    .line 47
    .restart local v1    # "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "DinamicInflater"

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "super.onCreateView failed"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lc8/taf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 48
    new-instance v2, Lc8/Qaf;

    invoke-virtual {p0}, Lc8/YZe;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "compatible with %s, as super createView fail."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/Qaf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
