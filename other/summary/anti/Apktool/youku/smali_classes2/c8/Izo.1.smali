.class public final Lc8/Izo;
.super Ljava/lang/Object;
.source "YoukuUIUtil.java"

# interfaces
.implements Lc8/tp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mzo;->getPaletteColor(Landroid/graphics/drawable/BitmapDrawable;Lc8/Lzo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lc8/Lzo;


# direct methods
.method constructor <init>(Lc8/Lzo;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lc8/Izo;->val$listener:Lc8/Lzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerated(Lc8/vp;)V
    .locals 3
    .param p1, "palette"    # Lc8/vp;

    .prologue
    .line 459
    invoke-virtual {p1}, Lc8/vp;->getMutedSwatch()Lc8/up;

    move-result-object v1

    .line 460
    .local v1, "swatch":Lc8/up;
    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v1}, Lc8/up;->getRgb()I

    move-result v0

    .line 462
    .local v0, "color":I
    iget-object v2, p0, Lc8/Izo;->val$listener:Lc8/Lzo;

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lc8/Izo;->val$listener:Lc8/Lzo;

    invoke-interface {v2, v0}, Lc8/Lzo;->onGenerated(I)V

    .line 466
    .end local v0    # "color":I
    :cond_0
    return-void
.end method
