.class public Lc8/Tb;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lc8/Sb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final mPaddingBottom:I

.field private final mPaddingTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput p1, p0, Lc8/Tb;->mPaddingTop:I

    .line 664
    iput p2, p0, Lc8/Tb;->mPaddingBottom:I

    .line 665
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lc8/Tb;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lc8/Tb;->mPaddingTop:I

    return v0
.end method
