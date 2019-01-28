.class public Lc8/Dag;
.super Landroid/util/Property;
.source "BackgroundColorProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundColorAnimation"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Ljava/lang/Integer;

    const-string/jumbo v1, "backgroundColor"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 4
    .param p1, "object"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-static {p1}, Lc8/Jgg;->getBorderDrawable(Landroid/view/View;)Lc8/Ieg;

    move-result-object v0

    .local v0, "borderDrawable":Lc8/Ieg;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lc8/Ieg;->getColor()I

    move-result v1

    .line 52
    .local v1, "color":I
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 46
    .end local v1    # "color":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .restart local v1    # "color":I
    goto :goto_0

    .line 49
    .end local v1    # "color":I
    :cond_1
    const/4 v1, 0x0

    .line 50
    .restart local v1    # "color":I
    const-string/jumbo v2, "BackgroundColorAnimation"

    const-string/jumbo v3, "Unsupported background type"

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Dag;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 58
    invoke-static {p1}, Lc8/Jgg;->getBorderDrawable(Landroid/view/View;)Lc8/Ieg;

    move-result-object v0

    .local v0, "borderDrawable":Lc8/Ieg;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/Ieg;->setColor(I)V

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_0

    .line 63
    :cond_1
    const-string/jumbo v1, "BackgroundColorAnimation"

    const-string/jumbo v2, "Unsupported background type"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/Dag;->set(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method
