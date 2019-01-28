.class public Lc8/Laf;
.super Ljava/lang/Object;
.source "DViewProPertySetterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDViewPropertySetter(Landroid/view/View;)Lc8/Maf;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 19
    instance-of v0, p0, Lc8/Taf;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lc8/Eaf;

    invoke-direct {v0}, Lc8/Eaf;-><init>()V

    .line 32
    :goto_0
    return-object v0

    .line 21
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Lc8/Haf;

    invoke-direct {v0}, Lc8/Haf;-><init>()V

    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lc8/Faf;

    invoke-direct {v0}, Lc8/Faf;-><init>()V

    goto :goto_0

    .line 25
    :cond_2
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 26
    new-instance v0, Lc8/Gaf;

    invoke-direct {v0}, Lc8/Gaf;-><init>()V

    goto :goto_0

    .line 27
    :cond_3
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 29
    new-instance v0, Lc8/Maf;

    invoke-direct {v0}, Lc8/Maf;-><init>()V

    goto :goto_0

    .line 32
    :cond_4
    new-instance v0, Lc8/Maf;

    invoke-direct {v0}, Lc8/Maf;-><init>()V

    goto :goto_0
.end method
