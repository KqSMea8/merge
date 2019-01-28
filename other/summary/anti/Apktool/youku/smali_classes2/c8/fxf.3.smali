.class public abstract Lc8/fxf;
.super Ljava/lang/Object;
.source "AbsPhenixCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(I)Lc8/fxf;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 11
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lc8/fxf;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 12
    return-object p0
.end method

.method public abstract fetch()Lc8/nxf;
.end method

.method public abstract into(Landroid/widget/ImageView;)Lc8/nxf;
.end method

.method public onlyCache()Lc8/fxf;
    .locals 0

    .prologue
    .line 13
    return-object p0
.end method

.method public placeholder(I)Lc8/fxf;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 9
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lc8/fxf;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 10
    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, ""

    return-object v0
.end method
