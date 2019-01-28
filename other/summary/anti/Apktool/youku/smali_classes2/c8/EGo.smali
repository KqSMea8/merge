.class public Lc8/EGo;
.super Ljava/lang/Object;
.source "VipDipPixUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/FGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayRect"
.end annotation


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lc8/EGo;->width:I

    .line 78
    iput p2, p0, Lc8/EGo;->height:I

    .line 79
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lc8/EGo;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lc8/EGo;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 91
    iput p1, p0, Lc8/EGo;->height:I

    .line 92
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 85
    iput p1, p0, Lc8/EGo;->width:I

    .line 86
    return-void
.end method
