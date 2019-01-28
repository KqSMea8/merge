.class public Lc8/fdg;
.super Lc8/Xcg;
.source "SimpleListComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Xcg",
        "<",
        "Lc8/gdg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lc8/Xcg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lc8/fdg;->generateListView(Landroid/content/Context;I)Lc8/gdg;

    move-result-object v0

    return-object v0
.end method

.method protected generateListView(Landroid/content/Context;I)Lc8/gdg;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 41
    new-instance v0, Lc8/gdg;

    invoke-direct {v0, p1}, Lc8/gdg;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "view":Lc8/gdg;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lc8/gdg;->initView(Landroid/content/Context;II)V

    .line 43
    return-object v0
.end method
