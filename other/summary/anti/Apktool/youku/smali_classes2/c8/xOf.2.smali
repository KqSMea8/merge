.class public Lc8/xOf;
.super Lc8/SOf;
.source "SmoothRecyclerScrollFeature.java"

# interfaces
.implements Lc8/OOf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wOf;,
        Lc8/vOf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/SOf",
        "<",
        "Lc8/Rv;",
        ">;",
        "Lc8/OOf;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lc8/SOf;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lc8/xOf;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lc8/xOf;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lc8/xOf;->resume(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lc8/xOf;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lc8/xOf;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lc8/xOf;->pause(Landroid/view/View;)V

    return-void
.end method

.method private getImageLoadFeature(Lc8/ePf;)Lc8/tOf;
    .locals 1
    .param p1, "view"    # Lc8/ePf;

    .prologue
    .line 41
    const-class v0, Lc8/tOf;

    invoke-virtual {p1, v0}, Lc8/ePf;->findFeature(Ljava/lang/Class;)Lc8/SOf;

    move-result-object v0

    check-cast v0, Lc8/tOf;

    return-object v0
.end method

.method private pause(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 72
    check-cast v3, Landroid/view/ViewGroup;

    .line 73
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 74
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 76
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/xOf;->pause(Landroid/view/View;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lc8/ePf;

    if-eqz v4, :cond_1

    .line 83
    check-cast p1, Lc8/ePf;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lc8/xOf;->getImageLoadFeature(Lc8/ePf;)Lc8/tOf;

    move-result-object v2

    .line 84
    .local v2, "imageLoad":Lc8/tOf;
    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v2}, Lc8/tOf;->pause()V

    .line 90
    .end local v2    # "imageLoad":Lc8/tOf;
    :cond_1
    return-void
.end method

.method private resume(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 48
    check-cast v3, Landroid/view/ViewGroup;

    .line 49
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 50
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/xOf;->resume(Landroid/view/View;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lc8/ePf;

    if-eqz v4, :cond_1

    .line 59
    check-cast p1, Lc8/ePf;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lc8/xOf;->getImageLoadFeature(Lc8/ePf;)Lc8/tOf;

    move-result-object v2

    .line 60
    .local v2, "imageLoad":Lc8/tOf;
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Lc8/tOf;->resume()V

    .line 66
    .end local v2    # "imageLoad":Lc8/tOf;
    :cond_1
    return-void
.end method


# virtual methods
.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lc8/Rv;

    invoke-virtual {p0, p1}, Lc8/xOf;->setHost(Lc8/Rv;)V

    return-void
.end method

.method public setHost(Lc8/Rv;)V
    .locals 1
    .param p1, "host"    # Lc8/Rv;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lc8/SOf;->setHost(Landroid/view/View;)V

    .line 27
    new-instance v0, Lc8/vOf;

    invoke-direct {v0, p0}, Lc8/vOf;-><init>(Lc8/xOf;)V

    invoke-virtual {p1, v0}, Lc8/Rv;->setOnScrollListener(Lc8/Cv;)V

    .line 28
    return-void
.end method

.method public wrapAdapter(Lc8/iv;)Lc8/iv;
    .locals 1
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    instance-of v0, p1, Lc8/wOf;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lc8/wOf;

    invoke-direct {v0, p0, p1}, Lc8/wOf;-><init>(Lc8/xOf;Lc8/iv;)V

    move-object p1, v0

    .line 36
    .end local p1    # "adapter":Lc8/iv;
    :cond_0
    return-object p1
.end method
