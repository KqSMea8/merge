.class public Lc8/is;
.super Lc8/ru;
.source "ActivityChooserView.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerLayout"
.end annotation


# static fields
.field private static final TINT_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 851
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Lc8/is;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 856
    invoke-direct {p0, p1, p2}, Lc8/ru;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 857
    sget-object v1, Lc8/is;->TINT_ATTRS:[I

    invoke-static {p1, p2, v1}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lc8/cx;

    move-result-object v0

    .line 858
    .local v0, "a":Lc8/cx;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/is;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 860
    return-void
.end method
