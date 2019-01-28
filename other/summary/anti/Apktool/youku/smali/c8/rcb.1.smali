.class public Lc8/rcb;
.super Ljava/lang/Object;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorFilterData"
.end annotation


# instance fields
.field final colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final contentName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final layerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p1, p0, Lc8/rcb;->layerName:Ljava/lang/String;

    .line 757
    iput-object p2, p0, Lc8/rcb;->contentName:Ljava/lang/String;

    .line 758
    iput-object p3, p0, Lc8/rcb;->colorFilter:Landroid/graphics/ColorFilter;

    .line 759
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 774
    if-ne p0, p1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v1

    .line 778
    :cond_1
    instance-of v3, p1, Lc8/rcb;

    if-nez v3, :cond_2

    move v1, v2

    .line 779
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 782
    check-cast v0, Lc8/rcb;

    .line 784
    .local v0, "other":Lc8/rcb;
    invoke-virtual {p0}, Lc8/rcb;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Lc8/rcb;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lc8/rcb;->colorFilter:Landroid/graphics/ColorFilter;

    iget-object v4, v0, Lc8/rcb;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 762
    const/16 v0, 0x11

    .line 763
    .local v0, "hashCode":I
    iget-object v1, p0, Lc8/rcb;->layerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lc8/rcb;->layerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit16 v0, v1, 0x20f

    .line 767
    :cond_0
    iget-object v1, p0, Lc8/rcb;->contentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 768
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lc8/rcb;->contentName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v1, v2

    .line 770
    :cond_1
    return v0
.end method
