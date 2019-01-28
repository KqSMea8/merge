.class public final Lc8/vXo;
.super Ljava/lang/Object;
.source "PagerItemDomObject.java"

# interfaces
.implements Lc8/BZf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lc8/CZf;FLc8/HZf;)V
    .locals 2
    .param p1, "node"    # Lc8/CZf;
    .param p2, "width"    # F
    .param p3, "measureOutput"    # Lc8/HZf;

    .prologue
    .line 16
    invoke-virtual {p1}, Lc8/CZf;->getParent()Lc8/CZf;

    move-result-object v0

    .line 17
    .local v0, "parent":Lc8/CZf;
    if-eqz v0, :cond_0

    .line 18
    iput p2, p3, Lc8/HZf;->width:F

    .line 19
    invoke-virtual {v0}, Lc8/CZf;->getLayoutHeight()F

    move-result v1

    iput v1, p3, Lc8/HZf;->height:F

    .line 22
    :cond_0
    return-void
.end method
