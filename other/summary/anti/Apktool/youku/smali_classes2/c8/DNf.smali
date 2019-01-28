.class public Lc8/DNf;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSize"
.end annotation


# instance fields
.field public height:I

.field public keep:Z

.field public limitWH:Z

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1300
    invoke-direct {p0, v0, v0, p1, p2}, Lc8/DNf;-><init>(ZZII)V

    .line 1301
    return-void
.end method

.method public constructor <init>(ZZII)V
    .locals 0
    .param p1, "keep"    # Z
    .param p2, "limitWH"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-boolean p1, p0, Lc8/DNf;->keep:Z

    .line 1294
    iput-boolean p2, p0, Lc8/DNf;->limitWH:Z

    .line 1295
    iput p3, p0, Lc8/DNf;->width:I

    .line 1296
    iput p4, p0, Lc8/DNf;->height:I

    .line 1297
    return-void
.end method
